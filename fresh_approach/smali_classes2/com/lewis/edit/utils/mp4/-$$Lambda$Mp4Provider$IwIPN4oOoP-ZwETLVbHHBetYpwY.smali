.class public final synthetic Lcom/lewis/edit/utils/mp4/-$$Lambda$Mp4Provider$IwIPN4oOoP-ZwETLVbHHBetYpwY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/utils/mp4/Mp4Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/utils/mp4/Mp4Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/-$$Lambda$Mp4Provider$IwIPN4oOoP-ZwETLVbHHBetYpwY;->f$0:Lcom/lewis/edit/utils/mp4/Mp4Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/-$$Lambda$Mp4Provider$IwIPN4oOoP-ZwETLVbHHBetYpwY;->f$0:Lcom/lewis/edit/utils/mp4/Mp4Provider;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/Mp4Provider;->lambda$startDecodeThread$0$Mp4Provider()V

    return-void
.end method
