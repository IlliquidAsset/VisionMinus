.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;->f$1:I

    iput p3, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;->f$1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$setAEBMultipleShotsSuccess$54$AirCraftControlActivity(II)V

    return-void
.end method
