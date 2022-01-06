#SingleInstance force
#CommentFlag //

>+a::
SendUnicodeChar(0x16ab)
return
>+b::
SendUnicodeChar(0x16d2)
return
>+c::
SendUnicodeChar(0x16b3)
return
>+d::
SendUnicodeChar(0x16de)
return
>+e::
SendUnicodeChar(0x16d6)
return
>+f::
SendUnicodeChar(0x16a0)
return
>+g::
SendUnicodeChar(0x16b7)
return
>+h::
SendUnicodeChar(0x16bb)
return
>+i::
SendUnicodeChar(0x16c1)
return
>+j::
SendUnicodeChar(0x16C3)
return
>+k::
SendUnicodeChar(0x16bf)
return
>+l::
SendUnicodeChar(0x16da)
return
>+m::
SendUnicodeChar(0x16d7)
return
>+n::
SendUnicodeChar(0x16be)
return
>+o::
SendUnicodeChar(0x16a9)
return
>+p::
SendUnicodeChar(0x16c8)
return
>+q::
SendUnicodeChar(0x16b2)
return
>+r::
SendUnicodeChar(0x16b1)
return
>+s::
SendUnicodeChar(0x16cb)
return
>+t::
SendUnicodeChar(0x16cf)
return
>+u::
SendUnicodeChar(0x16a2)
return
>+v::
SendUnicodeChar(0x16a2)
return
>+w::
SendUnicodeChar(0x16b9)
return
>+x::
SendUnicodeChar(0x16c9)
return
>+y::
SendUnicodeChar(0x16a3)
return
>+z::
SendUnicodeChar(0x16e3)
return
>+_::
SendUnicodeChar(0x16eb)
return
>+.::
SendUnicodeChar(0x205d)
return
>+0::
SendUnicodeChar(0x16ec)
return
>+5::
SendUnicodeChar(0x16a6)
return
>+3::
SendUnicodeChar(0x16c4)
return
>+2::
SendUnicodeChar(0x16e5)
return
>+Space::
SendUnicodeChar(0x16eb)
return
>+7::
SendUnicodeChar(0x16dd)
return

:*:ᚾᚷ::ᛝ
:*:ᛖᛖ::ᛄ
:*:ᛏᚻ::ᚦ
:*:ᚩᚩ::ᚩ


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
