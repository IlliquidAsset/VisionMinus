.class public final synthetic Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$8gEuICrsujNngTHd9WJc4qhQcqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/ui/activity/AVEditActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$8gEuICrsujNngTHd9WJc4qhQcqk;->f$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$8gEuICrsujNngTHd9WJc4qhQcqk;->f$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->lambda$onPrepared$2$AVEditActivity(Landroid/media/MediaPlayer;)V

    return-void
.end method
