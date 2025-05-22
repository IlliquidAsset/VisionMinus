.class public Lcom/powervision/gcs/model/ship/ShipAutoData;
.super Ljava/lang/Object;
.source "ShipAutoData.java"


# instance fields
.field private view:Landroid/view/View;

.field private warning:Lcom/powervision/gcs/model/ship/ShipWarning;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/powervision/gcs/model/ship/ShipWarning;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipAutoData;->view:Landroid/view/View;

    .line 16
    iput-object p2, p0, Lcom/powervision/gcs/model/ship/ShipAutoData;->warning:Lcom/powervision/gcs/model/ship/ShipWarning;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipAutoData;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWarning()Lcom/powervision/gcs/model/ship/ShipWarning;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipAutoData;->warning:Lcom/powervision/gcs/model/ship/ShipWarning;

    return-object v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipAutoData;->view:Landroid/view/View;

    return-void
.end method

.method public setWarning(Lcom/powervision/gcs/model/ship/ShipWarning;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipAutoData;->warning:Lcom/powervision/gcs/model/ship/ShipWarning;

    return-void
.end method
