.class public Lcom/powervision/gcs/utils/ship/DbHelper$Builder;
.super Ljava/lang/Object;
.source "DbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ship/DbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/powervision/gcs/utils/ship/DbHelper;
    .locals 3

    .line 353
    new-instance v0, Lcom/powervision/gcs/utils/ship/DbHelper;

    iget-object v1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$Builder;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/DbHelper;-><init>(Landroid/content/Context;Lcom/powervision/gcs/utils/ship/DbHelper$1;)V

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/powervision/gcs/utils/ship/DbHelper$Builder;
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$Builder;->context:Landroid/content/Context;

    return-object p0
.end method
