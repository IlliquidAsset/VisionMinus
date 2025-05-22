.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$3$dFL60bnui5qd8LuS6tav7PE3KCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$3$dFL60bnui5qd8LuS6tav7PE3KCU;->f$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;

    iput-object p2, p0, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$3$dFL60bnui5qd8LuS6tav7PE3KCU;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$3$dFL60bnui5qd8LuS6tav7PE3KCU;->f$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$3$dFL60bnui5qd8LuS6tav7PE3KCU;->f$1:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;->lambda$onNext$0$VideoAlbumActivity$3(Ljava/lang/Boolean;)V

    return-void
.end method
