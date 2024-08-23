#pragma once

#include <HeapQueue.h>
#include <cstdio>
#include <defines.h>
#include <limits>

template <class Pixel> struct QItem {
    ImgIdx index = -1;
    Pixel alpha = std::numeric_limits<Pixel>::max();

    QItem(ImgIdx index_, Pixel alpha_) : index(index_), alpha(alpha_) {}
    bool operator<(const QItem &other) const { return alpha < other.alpha; }
    void print() { printf("(%d, %.2f) ", (int)index, (double)alpha); }
};

template <class Pixel> class QuadHeapQueue {
    ImgIdx cursize;
    ImgIdx maxsize;
    QItem<Pixel> *arr;
    Pixel pop_level;

  public:
    ImgIdx get_cursize() { return cursize; }
    ImgIdx size() { return cursize; }
    ImgIdx sizeMax() { return maxsize; }
    bool empty() { return cursize == 0; }

    QuadHeapQueue(ImgIdx maxsize_in);
    ~QuadHeapQueue();

    void print();

    ImgIdx pop();
    void push(QItem<Pixel> item);

    inline Pixel get_minlev() { return arr[1].alpha; }
    inline ImgIdx top() { return arr[1].index; }
    inline Pixel top_alpha() { return arr[1].alpha; }
};

template <class Pixel> class HHPQ {
    QItem<Pixel> *list;
    QuadHeapQueue<Pixel> **hqueue;
    QItem<Pixel> **storage;
    ImgIdx *storage_cursize;
    ImgIdx *qsizes;

    ImgIdx thr_hqueue, curthr, numlevels;
    double a;
    ImgIdx queue_minlev;

    _int16 curSize_list, maxSize_list;
    ImgIdx maxSize_queue, mask_field;
    _int8 shamt, nbit;
    int emptytop;

    ImgIdx maxSize;

  public:
    void print();
    void initHQ(ImgIdx *dhist, ImgIdx numlevels_in, ImgIdx size, double a_in, int listsize, int connectivity, double r);
    HHPQ(ImgIdx *dhist, ImgIdx numlevels_in, ImgIdx size, double a_in, int listsize, ImgIdx connectivity = 4,
         double r = 0.2);
    ~HHPQ();
    inline void start_pushes() { emptytop = 1; }
    inline Pixel get_minlev() { return list[0].alpha; }
    inline ImgIdx top() { return list[0].index; }
    inline Pixel top_alpha() { return list[0].alpha; }
    void push_1stitem(ImgIdx idx);
    void end_pushes(_uint8 *isVisited);
    void push(ImgIdx idx, Pixel alpha);
    void push_queue(ImgIdx idx, Pixel alpha);
    ImgIdx pop(_uint8 *isVisited);
    int check_queue_level(_uint8 *isVisited);
    void pop_queue(_uint8 *isVisited);
};