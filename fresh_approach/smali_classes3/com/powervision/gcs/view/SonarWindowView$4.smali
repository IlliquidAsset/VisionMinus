.class Lcom/powervision/gcs/view/SonarWindowView$4;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarWindowView;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarWindowView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$4;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lightChanged(Z)V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqLight"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 359
    sput-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->light_up:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 361
    sput-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->light_up:Z

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$4;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/SonarWindowView$4$1;-><init>(Lcom/powervision/gcs/view/SonarWindowView$4;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
