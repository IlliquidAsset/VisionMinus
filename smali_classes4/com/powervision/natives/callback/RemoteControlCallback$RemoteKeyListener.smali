.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteKeyListener"
.end annotation


# static fields
.field public static final REMOTE_KEY_RESULT_INFO_PIC_ERROR_VIDEOING:I = 0xd

.field public static final REMOTE_KEY_RESULT_INFO_PIC_FAILED:I = 0x7

.field public static final REMOTE_KEY_RESULT_INFO_PIC_FULL_SD:I = 0x6

.field public static final REMOTE_KEY_RESULT_INFO_PIC_MODE_ERROR:I = 0x5

.field public static final REMOTE_KEY_RESULT_INFO_PIC_NONE_SD:I = 0x3

.field public static final REMOTE_KEY_RESULT_INFO_PIC_STATE_ERROR:I = 0x4

.field public static final REMOTE_KEY_RESULT_INFO_START_VIDEO:I = 0x1

.field public static final REMOTE_KEY_RESULT_INFO_STOP_VIDEO:I = 0x2

.field public static final REMOTE_KEY_RESULT_INFO_TAKE_PIC:I = 0x0

.field public static final REMOTE_KEY_RESULT_INFO_UNKNOW:I = -0x1

.field public static final REMOTE_KEY_RESULT_INFO_VIDEO_FULL_SD:I = 0xa

.field public static final REMOTE_KEY_RESULT_INFO_VIDEO_NONE_SD:I = 0x8

.field public static final REMOTE_KEY_RESULT_INFO_VIDEO_STATE_ERROR:I = 0x9

.field public static final REMOTE_KEY_RESULT_INFO_VIDEO_STOP_ERROR:I = 0xc

.field public static final REMOTE_KEY_RESULT_INFO_VIDEO_UNKNOW:I = 0xb


# virtual methods
.method public abstract keyResult(I)V
.end method
