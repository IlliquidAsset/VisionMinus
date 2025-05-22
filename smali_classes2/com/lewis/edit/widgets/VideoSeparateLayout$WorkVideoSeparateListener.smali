.class public interface abstract Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;
.super Ljava/lang/Object;
.source "VideoSeparateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/widgets/VideoSeparateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WorkVideoSeparateListener"
.end annotation


# virtual methods
.method public abstract onVsCancelClick()V
.end method

.method public abstract onVsConfirmClick(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVsPartClick()V
.end method

.method public abstract onVsRevertClick()V
.end method

.method public abstract videoSlidePlay(I)V
.end method
