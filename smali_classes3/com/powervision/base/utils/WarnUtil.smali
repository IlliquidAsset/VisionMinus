.class public Lcom/powervision/base/utils/WarnUtil;
.super Ljava/lang/Object;
.source "WarnUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WarnUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArmState(I)Z
    .locals 1

    const/16 v0, 0x15

    .line 151
    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getCalibrationSide(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    and-int/lit8 v0, p0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    and-int/lit8 v0, p0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, 0x6

    return p0
.end method

.method public static getESCState(I)Z
    .locals 1

    const/16 v0, 0x1a

    .line 130
    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getEnableWarns(I)Lcom/powervision/base/warning/HoverMessage;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/16 v2, 0x1e

    if-eq p0, v2, :cond_2

    const/16 v0, 0xf

    const/4 v2, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 261
    :pswitch_0
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_70:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 258
    :pswitch_1
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_42:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 253
    :pswitch_2
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_41:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    :pswitch_3
    const-string p0, "------------------------------------"

    .line 248
    invoke-static {p0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 249
    invoke-static {p0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6536\u5230\u4f4e\u7535\u8fd4\u822a\u6307\u4ee4 + "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/base/utils/TimeUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 251
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    const/16 v0, 0x9

    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_72:I

    invoke-static {v1}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 241
    :pswitch_4
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_77:I

    .line 242
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 238
    :pswitch_5
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_47:I

    .line 239
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 232
    :cond_0
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_55:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->color_red:I

    invoke-direct {p0, v2, v0, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;I)V

    return-object p0

    .line 229
    :cond_1
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_GeneralSetting_178:I

    .line 230
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 271
    :cond_2
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/base/R$string;->AP03_Check_40:I

    invoke-static {v1}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 196
    :cond_3
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_112:I

    invoke-static {v1}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getGimbalState(II)Z
    .locals 1

    const/16 v0, 0x1a

    .line 162
    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x1e

    invoke-static {p1, p0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x1f

    invoke-static {p1, p0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getHealthWarns(I)Lcom/powervision/base/warning/HoverMessage;
    .locals 3

    const/4 v0, 0x3

    const-string v1, ""

    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 385
    :cond_0
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    invoke-direct {p0, v2, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 383
    :cond_1
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    invoke-direct {p0, v2, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method private static getNoFlyString(I)Lcom/powervision/base/warning/HoverMessage;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNoflyType(JI)I
    .locals 2

    const/4 v0, 0x1

    shr-int p2, v0, p2

    int-to-long v0, p2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static getPresentWarnList(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/powervision/base/warning/HoverMessage;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    int-to-long v3, p0

    .line 56
    invoke-static {v3, v4, v2}, Lcom/powervision/base/utils/WarnUtil;->getNoflyType(JI)I

    move-result v2

    .line 57
    invoke-static {v2}, Lcom/powervision/base/utils/WarnUtil;->getNoFlyString(I)Lcom/powervision/base/warning/HoverMessage;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 58
    invoke-virtual {v2}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_1
    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 66
    :cond_2
    invoke-static {v1}, Lcom/powervision/base/utils/WarnUtil;->getEnableWarns(I)Lcom/powervision/base/warning/HoverMessage;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "presentWarn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WarnUtil"

    invoke-static {v4, v3}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {v2}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getPresentWarns(I)Lcom/powervision/base/warning/HoverMessage;
    .locals 5

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-eq p0, v0, :cond_7

    const/16 v0, 0x1f

    const/4 v2, 0x6

    if-eq p0, v0, :cond_6

    const/16 v0, 0xd

    const/4 v3, 0x2

    if-eq p0, v0, :cond_5

    const/16 v0, 0xe

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x11

    const/4 v4, 0x4

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 367
    :pswitch_0
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_102:I

    .line 368
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 364
    :pswitch_1
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_97:I

    .line 365
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 361
    :pswitch_2
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_96:I

    .line 362
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 358
    :pswitch_3
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_95:I

    .line 359
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 352
    :pswitch_4
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/base/utils/SPHelperUtils;->getNewerMode()I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 353
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_115_12:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 355
    :cond_0
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_115_15:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 301
    :pswitch_5
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_83:I

    .line 302
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 298
    :pswitch_6
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_81:I

    .line 299
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 296
    :pswitch_7
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_84:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 294
    :pswitch_8
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_84:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 292
    :pswitch_9
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_84:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 290
    :pswitch_a
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_84:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 288
    :pswitch_b
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_84:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 332
    :cond_1
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/base/utils/SPHelperUtils;->getNewerMode()I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 333
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_115_12:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 335
    :cond_2
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_115_15:I

    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 329
    :cond_3
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_181:I

    .line 330
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 323
    :cond_4
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_92:I

    .line 324
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 320
    :cond_5
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_91:I

    .line 321
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 373
    :cond_6
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_100:I

    .line 374
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 308
    :cond_7
    new-instance p0, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/base/R$string;->AP03_Msg_93:I

    .line 309
    invoke-static {v0}, Lcom/powervision/base/utils/WarnUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/powervision/base/R$color;->color_red:I

    invoke-direct {p0, v1, v0, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getString(I)Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVisualState(I)Z
    .locals 1

    const/16 v0, 0x9

    .line 141
    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getWarnList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/powervision/base/warning/HoverMessage;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 31
    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-static {v1}, Lcom/powervision/base/utils/WarnUtil;->getPresentWarns(I)Lcom/powervision/base/warning/HoverMessage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v2}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static isIMUNeedCalibrate(I)Z
    .locals 2

    const/4 v0, 0x1

    .line 120
    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isIMUNormal(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 110
    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p0, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSelfCheckPass(III)Z
    .locals 3

    const/4 v0, 0x0

    .line 410
    invoke-static {p0, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p0, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 411
    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 412
    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1e

    invoke-static {p1, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x9

    invoke-static {p0, p1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    invoke-static {p2, p0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isWarn(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
