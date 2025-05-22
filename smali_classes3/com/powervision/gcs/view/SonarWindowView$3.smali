.class Lcom/powervision/gcs/view/SonarWindowView$3;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;


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

    .line 286
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errorDeep()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/FishImageView;->setDepth(F)V

    return-void
.end method

.method public fishViewsetLockDeepNum(FF)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/view/FishImageView;->setLockDeepNum(FF)V

    return-void
.end method

.method public mapSetSonarCurrDeep(F)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->mapSetSonarCurrDeep(F)V

    :cond_0
    return-void
.end method

.method public setNowDeep(F)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->lastDeep:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->access$100(Lcom/powervision/gcs/view/SonarWindowView;F)V

    .line 298
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iput p1, v0, Lcom/powervision/gcs/view/SonarWindowView;->lastDeep:F

    :cond_0
    return-void
.end method

.method public startAnimation(FI)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->setAutoScaleY(F)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/view/SonarWindowView;->setVerticalViewScale(FI)V

    return-void
.end method

.method public turnToLockMode()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    sget v1, Lcom/powervision/gcs/utils/SonarStateHelper;->up:F

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataLen:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->down:F

    sget v3, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataLen:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/Texture/SonarTextureRender;->setLockDeep(FF)V

    :cond_0
    return-void
.end method

.method public turnToManualMode()V
    .locals 4

    .line 334
    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/utils/SonarStateHelper;->up:F

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->down:F

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/manager/DeepManager;->changeTheRule(FF)V

    .line 335
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    sget v1, Lcom/powervision/gcs/utils/SonarStateHelper;->up:F

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->down:F

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/view/SonarWindowView;->setVerticalManualDeep(FF)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$3;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    sget v1, Lcom/powervision/gcs/utils/SonarStateHelper;->up:F

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataLen:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sget v2, Lcom/powervision/gcs/utils/SonarStateHelper;->down:F

    sget v3, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataLen:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/Texture/SonarTextureRender;->setLockDeep(FF)V

    :cond_1
    return-void
.end method
