.class public interface abstract Lme/jingbin/library/BaseRefreshHeader;
.super Ljava/lang/Object;
.source "BaseRefreshHeader.java"


# static fields
.field public static final STATE_DONE:I = 0x3

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_REFRESHING:I = 0x2

.field public static final STATE_RELEASE_TO_REFRESH:I = 0x1


# virtual methods
.method public abstract getState()I
.end method

.method public abstract getVisibleHeight()I
.end method

.method public abstract onMove(F)V
.end method

.method public abstract refreshComplete()V
.end method

.method public abstract releaseAction()Z
.end method

.method public abstract setState(I)V
.end method
