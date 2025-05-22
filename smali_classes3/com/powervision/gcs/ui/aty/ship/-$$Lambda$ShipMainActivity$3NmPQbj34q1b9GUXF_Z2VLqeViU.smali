.class public final synthetic Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:D

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Ljava/lang/String;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;->f$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;->f$2:D

    iput-wide p5, p0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;->f$3:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;->f$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;->f$2:D

    iget-wide v4, p0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$3NmPQbj34q1b9GUXF_Z2VLqeViU;->f$3:D

    invoke-virtual/range {v0 .. v5}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lambda$onRegeocodeSearched$2$ShipMainActivity(Ljava/lang/String;DD)V

    return-void
.end method
