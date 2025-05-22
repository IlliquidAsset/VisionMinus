.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$-B0r2Dg9eCbBLeFxs3lmVkZxAHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$-B0r2Dg9eCbBLeFxs3lmVkZxAHQ;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$-B0r2Dg9eCbBLeFxs3lmVkZxAHQ;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$-B0r2Dg9eCbBLeFxs3lmVkZxAHQ;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$-B0r2Dg9eCbBLeFxs3lmVkZxAHQ;->f$1:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$onFollowModeParallel$48$AirCraftControlActivity(Landroid/util/SparseArray;)V

    return-void
.end method
