.class public interface abstract Lcom/powervision/gcs/base/IPresenter;
.super Ljava/lang/Object;
.source "IPresenter.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# virtual methods
.method public abstract onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method
