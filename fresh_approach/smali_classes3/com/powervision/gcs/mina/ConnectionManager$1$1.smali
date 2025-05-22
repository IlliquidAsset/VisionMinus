.class Lcom/powervision/gcs/mina/ConnectionManager$1$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/mina/ConnectionManager$1;->connect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/mina/ConnectionManager$1;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/mina/ConnectionManager$1;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1$1;->this$1:Lcom/powervision/gcs/mina/ConnectionManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailBack(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSuccessBack(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
