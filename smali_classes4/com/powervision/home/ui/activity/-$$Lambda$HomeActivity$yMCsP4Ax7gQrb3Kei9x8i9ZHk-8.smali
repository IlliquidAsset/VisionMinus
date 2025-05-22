.class public final synthetic Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$yMCsP4Ax7gQrb3Kei9x8i9ZHk-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/activity/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$yMCsP4Ax7gQrb3Kei9x8i9ZHk-8;->f$0:Lcom/powervision/home/ui/activity/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$yMCsP4Ax7gQrb3Kei9x8i9ZHk-8;->f$0:Lcom/powervision/home/ui/activity/HomeActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/powervision/home/ui/activity/HomeActivity;->lambda$setListener$1$HomeActivity(Ljava/lang/Integer;)V

    return-void
.end method
