.class Lcom/powervision/sdk/Ap03Manager$20;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/sdk/Ap03Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/sdk/Ap03Manager;


# direct methods
.method constructor <init>(Lcom/powervision/sdk/Ap03Manager;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$20;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 933
    :goto_0
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$20;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$2500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$20;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$2500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;->setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
