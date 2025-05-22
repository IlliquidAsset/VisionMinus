.class public Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FirmwareUpdateErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;
    }
.end annotation


# static fields
.field static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final PARAM_ERROR_TYPE:Ljava/lang/String; = "param_error_type"

.field public static final PARAM_ORIENTATION_TYPE:Ljava/lang/String; = "param_orientation_type"

.field private static final TAG:Ljava/lang/String; = "FirmwareUpdateDialogFra"


# instance fields
.field private ll_double:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mErrorCode:I

.field private mErrorType:I

.field private mListener:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;

.field private tv_d_cancel:Landroid/widget/TextView;

.field private tv_d_sure:Landroid/widget/TextView;

.field private tv_indicator:Landroid/widget/TextView;

.field private tv_sure:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorType:I

    .line 55
    iput v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mCurrentOrientation:I

    return-void
.end method

.method private initData()V
    .locals 8

    .line 157
    iget v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorType:I

    const/16 v1, 0x191

    const-string v2, ""

    const-string v3, " errocde:"

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_a

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/powervision/gcs/R$string;->Upgrade_104:I

    invoke-virtual {p0, v7}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v7, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_97:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 251
    :pswitch_2
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_35:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 245
    :pswitch_3
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_48:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 163
    :pswitch_4
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/powervision/gcs/R$string;->Upgrade_31:I

    invoke-virtual {p0, v5}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v5, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 240
    :pswitch_5
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_53:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 235
    :pswitch_6
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->W4_ConnectGuide_51:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 221
    :pswitch_7
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_50:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 213
    :pswitch_8
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/powervision/gcs/R$string;->Upgrade_18:I

    invoke-virtual {p0, v5}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v5, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 218
    :pswitch_9
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/powervision/gcs/R$string;->Upgrade_99:I

    invoke-virtual {p0, v5}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v5, v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 203
    :pswitch_a
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/powervision/gcs/R$string;->Upgrade_18:I

    invoke-virtual {p0, v7}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v7, v4, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 197
    :pswitch_b
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/powervision/gcs/R$string;->Upgrade_18:I

    invoke-virtual {p0, v7}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v7, v4, :cond_5

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 172
    :pswitch_c
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/powervision/gcs/R$string;->Upgrade_18:I

    invoke-virtual {p0, v7}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v7, v4, :cond_6

    goto :goto_6

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 169
    :pswitch_d
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_33:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 166
    :pswitch_e
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/powervision/gcs/R$string;->Upgrade_32:I

    invoke-virtual {p0, v5}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v5, v4, :cond_7

    goto :goto_7

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 160
    :pswitch_f
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/powervision/gcs/R$string;->Upgrade_31:I

    invoke-virtual {p0, v5}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v5, v4, :cond_8

    goto :goto_8

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/powervision/gcs/R$string;->PVW4_Msg_172:I

    invoke-virtual {p0, v7}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    if-ne v7, v4, :cond_a

    goto :goto_9

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    :goto_a
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x66
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initListener()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateErrorDialogFragment$2YBgoZVrLesNSmb9kJh2mhwyd3o;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateErrorDialogFragment$2YBgoZVrLesNSmb9kJh2mhwyd3o;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_d_cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateErrorDialogFragment$_-ronCtPhAK-7jg2sAN8_7uXwQM;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateErrorDialogFragment$_-ronCtPhAK-7jg2sAN8_7uXwQM;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_d_sure:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateErrorDialogFragment$NiascBgk30H_Ap269453OKO_anw;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$FirmwareUpdateErrorDialogFragment$NiascBgk30H_Ap269453OKO_anw;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(II)Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;
    .locals 3

    .line 72
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_error_type"

    .line 74
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "error_code"

    .line 75
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstanceVertical(I)Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;
    .locals 3

    .line 87
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;-><init>()V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_error_type"

    .line 89
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "param_orientation_type"

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$initListener$0$FirmwareUpdateErrorDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 274
    iget-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mListener:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;

    invoke-interface {p1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;->onPositive()V

    return-void
.end method

.method public synthetic lambda$initListener$1$FirmwareUpdateErrorDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->dismissAllowingStateLoss()V

    .line 279
    iget-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mListener:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;

    invoke-interface {p1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;->onCancel()V

    return-void
.end method

.method public synthetic lambda$initListener$2$FirmwareUpdateErrorDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mListener:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;

    invoke-interface {p1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;->onPositive()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_error_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorType:I

    .line 102
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mErrorCode:I

    .line 103
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "param_orientation_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mCurrentOrientation:I

    :cond_0
    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 112
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_firmware_update_error:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 115
    sget p2, Lcom/powervision/gcs/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_title:Landroid/widget/TextView;

    .line 116
    sget p2, Lcom/powervision/gcs/R$id;->tv_sure:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_sure:Landroid/widget/TextView;

    .line 117
    sget p2, Lcom/powervision/gcs/R$id;->tv_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_indicator:Landroid/widget/TextView;

    .line 118
    sget p2, Lcom/powervision/gcs/R$id;->ll_double:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->ll_double:Landroid/widget/LinearLayout;

    .line 119
    sget p2, Lcom/powervision/gcs/R$id;->tv_d_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_d_cancel:Landroid/widget/TextView;

    .line 120
    sget p2, Lcom/powervision/gcs/R$id;->tv_d_sure:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->tv_d_sure:Landroid/widget/TextView;

    .line 122
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->initData()V

    .line 123
    invoke-direct {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->initListener()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 129
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 130
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    invoke-virtual {p0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 138
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 140
    iget v2, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mCurrentOrientation:I

    if-nez v2, :cond_0

    const/high16 v2, 0x43960000    # 300.0f

    .line 141
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43aa0000    # 340.0f

    .line 143
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    const/4 v2, -0x2

    .line 146
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setOnClickListener(Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->mListener:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;

    return-void
.end method
