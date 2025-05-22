.class public interface abstract Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;
.super Ljava/lang/Object;
.source "SonarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HistoryThreadListener"
.end annotation


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract initTheHisoryMode()V
.end method

.method public abstract needReplay()V
.end method

.method public abstract prepareHalfisDone()V
.end method

.method public abstract preparingBegin()V
.end method

.method public abstract preparingOver()V
.end method

.method public abstract readHistory(Ljava/lang/String;)V
.end method

.method public abstract threadIsOver()V
.end method

.method public abstract updateTheLineCount(I)V
.end method
