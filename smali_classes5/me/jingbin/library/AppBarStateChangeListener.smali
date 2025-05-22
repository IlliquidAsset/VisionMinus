.class public abstract Lme/jingbin/library/AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "AppBarStateChangeListener.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jingbin/library/AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private mCurrentState:Lme/jingbin/library/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lme/jingbin/library/AppBarStateChangeListener$State;->IDLE:Lme/jingbin/library/AppBarStateChangeListener$State;

    iput-object v0, p0, Lme/jingbin/library/AppBarStateChangeListener;->mCurrentState:Lme/jingbin/library/AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 22
    iget-object p2, p0, Lme/jingbin/library/AppBarStateChangeListener;->mCurrentState:Lme/jingbin/library/AppBarStateChangeListener$State;

    sget-object v0, Lme/jingbin/library/AppBarStateChangeListener$State;->EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_0

    .line 23
    sget-object p2, Lme/jingbin/library/AppBarStateChangeListener$State;->EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lme/jingbin/library/AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lme/jingbin/library/AppBarStateChangeListener$State;)V

    .line 25
    :cond_0
    sget-object p1, Lme/jingbin/library/AppBarStateChangeListener$State;->EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

    iput-object p1, p0, Lme/jingbin/library/AppBarStateChangeListener;->mCurrentState:Lme/jingbin/library/AppBarStateChangeListener$State;

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 27
    iget-object p2, p0, Lme/jingbin/library/AppBarStateChangeListener;->mCurrentState:Lme/jingbin/library/AppBarStateChangeListener$State;

    sget-object v0, Lme/jingbin/library/AppBarStateChangeListener$State;->COLLAPSED:Lme/jingbin/library/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_2

    .line 28
    sget-object p2, Lme/jingbin/library/AppBarStateChangeListener$State;->COLLAPSED:Lme/jingbin/library/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lme/jingbin/library/AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lme/jingbin/library/AppBarStateChangeListener$State;)V

    .line 30
    :cond_2
    sget-object p1, Lme/jingbin/library/AppBarStateChangeListener$State;->COLLAPSED:Lme/jingbin/library/AppBarStateChangeListener$State;

    iput-object p1, p0, Lme/jingbin/library/AppBarStateChangeListener;->mCurrentState:Lme/jingbin/library/AppBarStateChangeListener$State;

    goto :goto_0

    .line 32
    :cond_3
    iget-object p2, p0, Lme/jingbin/library/AppBarStateChangeListener;->mCurrentState:Lme/jingbin/library/AppBarStateChangeListener$State;

    sget-object v0, Lme/jingbin/library/AppBarStateChangeListener$State;->IDLE:Lme/jingbin/library/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_4

    .line 33
    sget-object p2, Lme/jingbin/library/AppBarStateChangeListener$State;->IDLE:Lme/jingbin/library/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lme/jingbin/library/AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lme/jingbin/library/AppBarStateChangeListener$State;)V

    .line 35
    :cond_4
    sget-object p1, Lme/jingbin/library/AppBarStateChangeListener$State;->IDLE:Lme/jingbin/library/AppBarStateChangeListener$State;

    iput-object p1, p0, Lme/jingbin/library/AppBarStateChangeListener;->mCurrentState:Lme/jingbin/library/AppBarStateChangeListener$State;

    :goto_0
    return-void
.end method

.method public abstract onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lme/jingbin/library/AppBarStateChangeListener$State;)V
.end method
