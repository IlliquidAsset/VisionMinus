.class public final synthetic Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$2$LkaQBtHq07x-kRFnjTYt6FSwRkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity$2;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/service/ui/activity/ServiceImageActivity$2;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$2$LkaQBtHq07x-kRFnjTYt6FSwRkk;->f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity$2;

    iput-object p2, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$2$LkaQBtHq07x-kRFnjTYt6FSwRkk;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$2$LkaQBtHq07x-kRFnjTYt6FSwRkk;->f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity$2;

    iget-object v1, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$2$LkaQBtHq07x-kRFnjTYt6FSwRkk;->f$1:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/powervision/service/ui/activity/ServiceImageActivity$2;->lambda$onNext$0$ServiceImageActivity$2(Ljava/lang/Boolean;)V

    return-void
.end method
