.class public interface abstract Lme/jingbin/library/BaseLoadMore;
.super Ljava/lang/Object;
.source "BaseLoadMore.java"


# static fields
.field public static final STATE_COMPLETE:I = 0x1

.field public static final STATE_FAILURE:I = 0x3

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_NO_MORE:I = 0x2


# virtual methods
.method public abstract getFailureView()Landroid/view/View;
.end method

.method public abstract setLoadingMoreBottomHeight(F)V
.end method

.method public abstract setState(I)V
.end method
