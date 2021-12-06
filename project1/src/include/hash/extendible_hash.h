/*
 * extendible_hash.h : implementation of in-memory hash table using extendible
 * hashing
 *
 * Functionality: The buffer pool manager must maintain a page table to be able
 * to quickly map a PageId to its corresponding memory location; or alternately
 * report that the PageId does not match any currently-buffered page.
 */

#pragma once

#include <cstdlib>
#include <vector>
#include <string>
#include <map>
#include <memory>
#include <mutex>

#include "hash/hash_table.h"

namespace scudb {

template <typename K, typename V>
class ExtendibleHash : public HashTable<K, V> {
public:
  // constructor
  ExtendibleHash(size_t size);
  // helper function to generate hash addressing
  size_t HashKey(const K &key);
  // helper function to get global & local depth
  int GetGlobalDepth() const;
  int GetLocalDepth(int bucket_id) const;
  int GetNumBuckets() const;
  // lookup and modifier
  bool Find(const K &key, V &value) override;
  bool Remove(const K &key) override;
  void Insert(const K &key, const V &value) override;

private:
  // add your own member variables here
    struct Bucket {
        Bucket() = default;
        explicit Bucket(size_t i, int d) : id(i), local_depth(d) {}
        std::map<K, V> items;          // ��ֵ��
        size_t id = 0;                 // id of Bucket
        int local_depth = 0;                 // local depth����
    };

    mutable std::mutex mutex_w;      
    const size_t bucket_size;    // ÿ��Ͱ�����ɵ�Ԫ�ظ���
    int bucket_count;             // ��ǰͰ����
    size_t pair_count;     
    int global_depth;              // ȫ����ȼ���
    std::vector<std::shared_ptr<Bucket>> buckets;    // Ͱ����
    std::shared_ptr<Bucket> split(std::shared_ptr<Bucket>&);  // bucket split function
};
} // namespace scudb
