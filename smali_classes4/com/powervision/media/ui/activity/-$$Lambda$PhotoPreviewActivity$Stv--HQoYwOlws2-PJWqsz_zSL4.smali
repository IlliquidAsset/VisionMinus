.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$PhotoPreviewActivity$Stv--HQoYwOlws2-PJWqsz_zSL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$PhotoPreviewActivity$Stv--HQoYwOlws2-PJWqsz_zSL4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$PhotoPreviewActivity$Stv--HQoYwOlws2-PJWqsz_zSL4;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->lambda$sharePath$0(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
