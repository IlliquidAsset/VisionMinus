.class public Lcom/powervision/base/warning/WarningAutoData;
.super Ljava/lang/Object;
.source "WarningAutoData.java"


# instance fields
.field private view:Landroid/view/View;

.field private warning:Lcom/powervision/base/warning/HoverMessage;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/powervision/base/warning/HoverMessage;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/powervision/base/warning/WarningAutoData;->view:Landroid/view/View;

    .line 11
    iput-object p2, p0, Lcom/powervision/base/warning/WarningAutoData;->warning:Lcom/powervision/base/warning/HoverMessage;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/powervision/base/warning/WarningAutoData;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWarning()Lcom/powervision/base/warning/HoverMessage;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/base/warning/WarningAutoData;->warning:Lcom/powervision/base/warning/HoverMessage;

    return-object v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/powervision/base/warning/WarningAutoData;->view:Landroid/view/View;

    return-void
.end method

.method public setWarning(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/base/warning/WarningAutoData;->warning:Lcom/powervision/base/warning/HoverMessage;

    return-void
.end method
