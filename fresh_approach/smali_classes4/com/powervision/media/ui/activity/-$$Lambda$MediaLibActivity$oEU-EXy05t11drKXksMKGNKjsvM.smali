.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$oEU-EXy05t11drKXksMKGNKjsvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$oEU-EXy05t11drKXksMKGNKjsvM;->f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$oEU-EXy05t11drKXksMKGNKjsvM;->f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->lambda$doDeleteFun$5$MediaLibActivity(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
