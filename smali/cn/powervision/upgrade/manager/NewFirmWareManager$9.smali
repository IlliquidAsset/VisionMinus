.class Lcn/powervision/upgrade/manager/NewFirmWareManager$9;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "NewFirmWareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareLocalBodyWithServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Ljava/util/List<",
        "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 1540
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1

    .line 1635
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget v0, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    const-string p1, "lzqFirm"

    const-string v0, "  \u8bf7\u6c42Body onFailure "

    .line 1636
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$400(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1540
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;)V"
        }
    .end annotation

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u8bf7\u6c42 BODY \u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1545
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$500(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1549
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$400(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    if-eqz p1, :cond_7

    .line 1553
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 1562
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "\u56fa\u4ef6\u4fe1\u606f\u5f02\u5e38\uff0c\u81f3\u5c11\u5927\u4e8e1\uff0c\u4f46\u8fd4\u56de\u4e00\u6761\u4fe1\u606f"

    .line 1563
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1568
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "config"

    if-ge v0, v3, :cond_4

    .line 1569
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    .line 1570
    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v5

    .line 1572
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AP03"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_AC-"

    .line 1573
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getAcVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, -0x1

    .line 1574
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "USB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "OTA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v8, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "NFZ"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v8, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "SN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x6

    goto :goto_1

    :sswitch_4
    const-string v4, "MC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "GM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x4

    goto :goto_1

    :sswitch_6
    const-string v4, "FV"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x3

    goto :goto_1

    :sswitch_7
    const-string v4, "FS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v8, 0x8

    goto :goto_1

    :sswitch_8
    const-string v4, "FC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_9
    const-string v4, "DV"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_a
    const-string v4, "DL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v8, 0xa

    goto :goto_1

    :sswitch_b
    const-string v4, "AC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_c
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v8, 0xc

    :cond_3
    :goto_1
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_2

    .line 1612
    :pswitch_0
    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v3, v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$602(Lcn/powervision/upgrade/manager/NewFirmWareManager;Z)Z

    goto/16 :goto_2

    :pswitch_1
    const-string v4, "_NFZ-"

    .line 1609
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_2
    const-string v4, "_DL-"

    .line 1606
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_3
    const-string v4, "_OTA-"

    .line 1603
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_4
    const-string v4, "_FS-"

    .line 1600
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    const-string v4, "_USB-"

    .line 1597
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_6
    const-string v4, "_SN-"

    .line 1594
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_7
    const-string v4, "_MC-"

    .line 1591
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_8
    const-string v4, "_GM-"

    .line 1588
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_9
    const-string v4, "_FV-"

    .line 1585
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_a
    const-string v4, "_FC-"

    .line 1582
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_b
    const-string v4, "_DV-"

    .line 1579
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1576
    :pswitch_c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1618
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1619
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v0}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1620
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {p1, v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$602(Lcn/powervision/upgrade/manager/NewFirmWareManager;Z)Z

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1627
    :cond_6
    :goto_4
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$600(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1628
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget-object p1, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->logTag:Ljava/lang/String;

    const-string v0, "\u7f3a\u5c11.conf\u6587\u4ef6"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_c
        0x822 -> :sswitch_b
        0x888 -> :sswitch_a
        0x892 -> :sswitch_9
        0x8bd -> :sswitch_8
        0x8cd -> :sswitch_7
        0x8d0 -> :sswitch_6
        0x8e6 -> :sswitch_5
        0x996 -> :sswitch_4
        0xa5b -> :sswitch_3
        0x12da2 -> :sswitch_2
        0x132fc -> :sswitch_1
        0x14964 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
