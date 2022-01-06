
>+a::
SendUnicodeChar(0x2801)
return
>+b::
SendUnicodeChar(0x2803)
return
>+c::
SendUnicodeChar(0x2809)
return
>+d::
SendUnicodeChar(0x2819)
return
>+e::
SendUnicodeChar(0x2811)
return
>+f::
SendUnicodeChar(0x280b)
return
>+g::
SendUnicodeChar(0x281b)
return
>+h::
SendUnicodeChar(0x2813)
return
>+i::
SendUnicodeChar(0x280a)
return
>+j::
SendUnicodeChar(0x281a)
return
>+k::
SendUnicodeChar(0x2805)
return
>+l::
SendUnicodeChar(0x2807)
return
>+m::
SendUnicodeChar(0x280d)
return
>+n::
SendUnicodeChar(0x281d)
return
>+o::
SendUnicodeChar(0x2815)
return
>+p::
SendUnicodeChar(0x280f)
return
>+q::
SendUnicodeChar(0x281f)
return
>+r::
SendUnicodeChar(0x2817)
return
>+s::
SendUnicodeChar(0x280e)
return
>+t::
SendUnicodeChar(0x281e)
return
>+u::
SendUnicodeChar(0x2825)
return
>+v::
SendUnicodeChar(0x2827)
return
>+w::
SendUnicodeChar(0x283a)
return
>+x::
SendUnicodeChar(0x282d)
return
>+y::
SendUnicodeChar(0x283d)
return
>+z::
SendUnicodeChar(0x2835)
return

>+1::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x2801)
return
>+2::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x2803)
return
>+3::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x2809)
return
>+4::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x2819)
return
>+5::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x2811)
return
>+6::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x280b)
return
>+7::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x281b)
return
>+8::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x2813)
return
>+9::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x280a)
return
>+0::
SendUnicodeChar(0x283c)
SendUnicodeChar(0x281a)
return

>+,::
SendUnicodeChar(0x2802)
return
>+.::
SendUnicodeChar(0x2832)
return
>+/::
SendUnicodeChar(0x2826)
return
>+`::
SendUnicodeChar(0x2816)
return
>+'::
SendUnicodeChar(0x2804)
SendUnicodeChar(0x2836)
return
>+;::
SendUnicodeChar(0x2812)
return






SendUnicodeChar(charCode)

{
	VarSetCapacity(ki, 28 * 2, 0)
	EncodeInteger(&ki + 0, 1)
	EncodeInteger(&ki + 6, charCode)
	EncodeInteger(&ki + 8, 4)
	EncodeInteger(&ki +28, 1)
	EncodeInteger(&ki +34, charCode)
	EncodeInteger(&ki +36, 4|2)

	DllCall("SendInput", "UInt", 2, "UInt", &ki, "Int", 28)
}

EncodeInteger(ref, val)
{
	DllCall("ntdll\RtlFillMemoryUlong", "Uint", ref, "Uint", 4, "Uint", val)
}
