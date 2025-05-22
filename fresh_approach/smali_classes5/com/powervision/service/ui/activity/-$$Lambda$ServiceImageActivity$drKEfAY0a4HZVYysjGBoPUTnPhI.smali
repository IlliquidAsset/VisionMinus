.class public final synthetic Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$drKEfAY0a4HZVYysjGBoPUTnPhI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$drKEfAY0a4HZVYysjGBoPUTnPhI;->f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    iput p2, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$drKEfAY0a4HZVYysjGBoPUTnPhI;->f$1:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$drKEfAY0a4HZVYysjGBoPUTnPhI;->f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    iget v1, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$drKEfAY0a4HZVYysjGBoPUTnPhI;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->lambda$workImageData$4$ServiceImageActivity(ILio/reactivex/ObservableEmitter;)V

    return-void
.end method
