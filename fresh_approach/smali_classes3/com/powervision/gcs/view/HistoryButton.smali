.class public Lcom/powervision/gcs/view/HistoryButton;
.super Landroid/view/View;
.source "HistoryButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;
    }
.end annotation


# instance fields
.field private in_record_mode:Z

.field private isPlaying:Z

.field private isRecording:Z

.field private listener:Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/powervision/gcs/view/HistoryButton;->in_record_mode:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/HistoryButton;->setTheRecordeState(Z)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/HistoryButton;->setThePlayState(Z)V

    .line 28
    :goto_0
    invoke-virtual {p0, p0}, Lcom/powervision/gcs/view/HistoryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public changeTheUIState(I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/powervision/gcs/view/HistoryButton;->in_record_mode:Z

    .line 63
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/HistoryButton;->setTheRecordeState(Z)V

    goto :goto_0

    .line 66
    :cond_0
    iput-boolean v0, p0, Lcom/powervision/gcs/view/HistoryButton;->in_record_mode:Z

    .line 68
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/HistoryButton;->setThePlayState(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-boolean p1, p0, Lcom/powervision/gcs/view/HistoryButton;->in_record_mode:Z

    if-eqz p1, :cond_1

    .line 78
    iget-boolean p1, p0, Lcom/powervision/gcs/view/HistoryButton;->isRecording:Z

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/powervision/gcs/view/HistoryButton;->listener:Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;

    if-eqz p1, :cond_3

    .line 80
    invoke-interface {p1}, Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;->onStopRecording()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/HistoryButton;->listener:Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;

    if-eqz p1, :cond_3

    .line 84
    invoke-interface {p1}, Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;->onRecording()V

    goto :goto_0

    .line 88
    :cond_1
    iget-boolean p1, p0, Lcom/powervision/gcs/view/HistoryButton;->isPlaying:Z

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/powervision/gcs/view/HistoryButton;->listener:Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;

    if-eqz p1, :cond_3

    .line 90
    invoke-interface {p1}, Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;->onPausePlaying()V

    goto :goto_0

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/HistoryButton;->listener:Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;

    if-eqz p1, :cond_3

    .line 94
    invoke-interface {p1}, Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;->onPlaying()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOnRecondingListener(Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/view/HistoryButton;->listener:Lcom/powervision/gcs/view/HistoryButton$OnHistoryFunctionButtonClickListener;

    return-void
.end method

.method public setThePlayState(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/powervision/gcs/view/HistoryButton;->isPlaying:Z

    if-nez p1, :cond_0

    .line 51
    sget p1, Lcom/powervision/gcs/R$mipmap;->sonar_play:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/HistoryButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 54
    :cond_0
    sget p1, Lcom/powervision/gcs/R$mipmap;->sonar_pause:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/HistoryButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setTheRecordeState(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/powervision/gcs/view/HistoryButton;->isRecording:Z

    if-eqz p1, :cond_0

    .line 40
    sget p1, Lcom/powervision/gcs/R$mipmap;->record_stop_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/HistoryButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 43
    :cond_0
    sget p1, Lcom/powervision/gcs/R$mipmap;->record_start_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/HistoryButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
