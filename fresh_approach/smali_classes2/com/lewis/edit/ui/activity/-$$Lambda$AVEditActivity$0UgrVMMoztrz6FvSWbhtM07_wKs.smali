.class public final synthetic Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$0UgrVMMoztrz6FvSWbhtM07_wKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/ui/activity/AVEditActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$0UgrVMMoztrz6FvSWbhtM07_wKs;->f$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$0UgrVMMoztrz6FvSWbhtM07_wKs;->f$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->lambda$setListener$1$AVEditActivity(Landroid/media/MediaPlayer;)V

    return-void
.end method
