#version 320 es

#ifndef REDUCER
#define _GLF_ZERO(X, Y)                   (Y)
#define _GLF_ONE(X, Y)                    (Y)
#define _GLF_FALSE(X, Y)                  (Y)
#define _GLF_TRUE(X, Y)                   (Y)
#define _GLF_IDENTITY(X, Y)               (Y)
#define _GLF_DEAD(X)                      (X)
#define _GLF_FUZZED(X)                    (X)
#define _GLF_WRAPPED_LOOP(X)              X
#define _GLF_WRAPPED_IF_TRUE(X)           X
#define _GLF_WRAPPED_IF_FALSE(X)          X
#define _GLF_SWITCH(X)                    X
#define _GLF_MAKE_IN_BOUNDS_INT(IDX, SZ)  clamp(IDX, 0, SZ - 1)
#define _GLF_MAKE_IN_BOUNDS_UINT(IDX, SZ) clamp(IDX, 0u, SZ - 1u)
#endif

// END OF GENERATED HEADER
#define _int_2 _GLF_uniform_int_values[0]
#define _int_1 _GLF_uniform_int_values[1]
#define _int_0 _GLF_uniform_int_values[2]
#define _int_7 _GLF_uniform_int_values[3]
#define _int_6 _GLF_uniform_int_values[4]

precision highp float;

precision highp int;

// Contents of _GLF_uniform_int_values: [2, 1, 0, 7, 6]
layout(set = 0, binding = 0) uniform buf0 {
 int _GLF_uniform_int_values[5];
};
int arr0[10] = int[10](0, 0, 0, 0, 0, 0, 0, 0, 0, 0), arr1[10] = int[10](1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

layout(location = 0) out vec4 _GLF_color;

void func(int x, int y)
{
 for(int i = _int_1; i < _int_6; i ++)
  {
   arr1[_GLF_MAKE_IN_BOUNDS_INT(i, 10)] = arr0[_GLF_MAKE_IN_BOUNDS_INT(_int_1, 10)];
  }
 int a = 0;
 for(int i = x; i < y; i ++)
  {
   if(a ++ > 6)
    {
     break;
    }
   arr0[_GLF_MAKE_IN_BOUNDS_INT(i, 10)] = arr1[_GLF_MAKE_IN_BOUNDS_INT(_int_1, 10)];
  }
}
void main()
{
 int a = 1;
 for(int i = 1; a < 6; i = _int_2 , a ++)
  {
   for(int j = 1; j < 10; j += i)
    {
     func(j, 10);
    }
  }
 _GLF_color = vec4(arr1[_GLF_MAKE_IN_BOUNDS_INT(_int_0, 10)], arr0[_GLF_MAKE_IN_BOUNDS_INT(_int_0, 10)], arr1[_GLF_MAKE_IN_BOUNDS_INT(_int_1, 10)], arr1[_GLF_MAKE_IN_BOUNDS_INT(_int_7, 10)]);
}
