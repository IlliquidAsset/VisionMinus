.class public Lcom/powervision/condition/utils/TouchableWrapper;
.super Landroid/widget/FrameLayout;
.source "TouchableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;
    }
.end annotation


# instance fields
.field private mOnMapParentTouchListener:Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/powervision/condition/utils/TouchableWrapper;->mOnMapParentTouchListener:Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1}, Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;->OnMapParentTouch(Landroid/view/MotionEvent;)V

    .line 36
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnMapParentTouchListener(Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/powervision/condition/utils/TouchableWrapper;->mOnMapParentTouchListener:Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;

    return-void
.end method
