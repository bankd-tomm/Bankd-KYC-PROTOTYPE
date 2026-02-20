using System;
using System.Runtime.InteropServices;
using UnityEngine;

public class ShuftiKYC : MonoBehaviour
{
    #if UNITY_IOS && !UNITY_EDITOR
        [DllImport("__Internal")]
        private static extern void ShowHelloSwift();
    #endif
        public void ShowHello()
    {
        #if UNITY_IOS && !UNITY_EDITOR
            ShowHelloSwift();
        #else
            Debug.Log("WE ARE IN EDITOR");
        #endif
    }

    void Start()
    {
        ShowHello();
    }
}