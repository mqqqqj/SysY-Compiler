#include <arm_neon.h>
#include <stdio.h>

int main() {
    float arr[4] = {2,4,8,16};
    float32x4_t sum4 = vmovq_n_f32(0);
    int i = 0;
    // 从array地址加载连续4个32位整数，保存到temp向量
    float32x4_t temp = vld1q_f32(arr);
    // sum4与temp向量对位相加
    sum4 = vaddq_f32(sum4, temp);
    float32x2_t suml2 = vget_low_f32(sum4);
    // 将高位两个元素保存到sumh2向量
    float32x2_t sumh2 = vget_high_f32(sum4);
    // 向量进行水平加法，得到suml2中两元素的和以及sumh2中两元素的和
    suml2 = vpadd_f32(suml2,sumh2);
    // 再次进行水平加法，得到sum4向量4个元素的和
    float32_t sum = vpadd_f32(suml2);
    printf("%f\n",(float)sum);
    return 0;
}