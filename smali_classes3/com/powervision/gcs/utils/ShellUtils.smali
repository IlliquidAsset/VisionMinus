.class public Lcom/powervision/gcs/utils/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "su"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRootPermission()Z
    .locals 3

    const-string v0, "echo root"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;

    move-result-object v0

    iget v0, v0, Lcom/powervision/gcs/utils/ShellUtils$CommandResult;->result:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static execCommand(Ljava/lang/String;Z)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 33
    invoke-static {v1, p1, v0}, Lcom/powervision/gcs/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 70
    invoke-static {v0, p1, p2}, Lcom/powervision/gcs/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;Z)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/powervision/gcs/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/powervision/gcs/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;Z)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lcom/powervision/gcs/utils/ShellUtils$CommandResult;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_14

    .line 100
    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_18

    .line 110
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/powervision/gcs/utils/ShellUtils;->COMMAND_SU:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/powervision/gcs/utils/ShellUtils;->COMMAND_SH:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 111
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 112
    :try_start_2
    array-length v3, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    if-nez v5, :cond_2

    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    const-string v5, "\n"

    .line 118
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "exit\n"

    .line 121
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p2, :cond_5

    .line 126
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 127
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 128
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 129
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 131
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 132
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 134
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 135
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_0
    move-exception v5

    move-object v7, p1

    move-object p1, p0

    move-object p0, v5

    move-object v5, v4

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v4, v0

    goto/16 :goto_9

    :catch_1
    move-exception v4

    move-object v5, v0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v4

    :goto_5
    move-object v4, v3

    goto :goto_6

    :catch_2
    move-exception v3

    move-object v4, v0

    move-object v5, v4

    move-object v7, p1

    move-object p1, p0

    move-object p0, v3

    :goto_6
    move-object v3, v2

    move v2, v1

    move-object v1, p2

    goto :goto_7

    :catch_3
    move-exception p2

    move-object v4, v0

    move-object v5, v4

    move-object v3, v2

    move v2, v1

    move-object v1, v5

    move-object v7, p1

    move-object p1, p0

    move-object p0, p2

    :goto_7
    move-object p2, v7

    goto/16 :goto_d

    :catch_4
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v4, p1

    move-object v5, v4

    move-object v3, v2

    move v2, v1

    move-object v1, v5

    goto/16 :goto_d

    :cond_5
    move-object p0, v0

    move-object p2, p0

    move-object v3, p2

    move-object v4, v3

    .line 143
    :cond_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz v3, :cond_7

    .line 146
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v4, :cond_8

    .line 149
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    :catch_5
    move-exception v2

    .line 152
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    if-eqz p1, :cond_d

    .line 155
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_11

    :catchall_2
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    :goto_9
    move-object v0, v2

    goto/16 :goto_14

    :catch_6
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v1, p1

    move-object v4, v1

    move-object v5, v4

    move-object v3, v2

    goto :goto_c

    :catchall_3
    move-exception p0

    move-object v3, v0

    goto :goto_a

    :catch_7
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v1, p1

    goto :goto_b

    :catchall_4
    move-exception p0

    move-object p1, v0

    move-object v3, p1

    :goto_a
    move-object v4, v3

    goto :goto_14

    :catch_8
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object v1, p2

    :goto_b
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_c
    const/4 v2, -0x1

    .line 139
    :goto_d
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v3, :cond_9

    .line 143
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_e

    :catch_9
    move-exception p0

    goto :goto_f

    :cond_9
    :goto_e
    if-eqz v4, :cond_a

    .line 146
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v5, :cond_b

    .line 149
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_10

    .line 152
    :goto_f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_10
    if-eqz p2, :cond_c

    .line 155
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_c
    move-object p0, p1

    move-object p2, v1

    move v1, v2

    .line 158
    :cond_d
    :goto_11
    new-instance p1, Lcom/powervision/gcs/utils/ShellUtils$CommandResult;

    if-nez p0, :cond_e

    move-object p0, v0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_12
    if-nez p2, :cond_f

    goto :goto_13

    .line 159
    :cond_f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-direct {p1, v1, p0, v0}, Lcom/powervision/gcs/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_5
    move-exception p0

    move-object p1, p2

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    :goto_14
    if-eqz v0, :cond_10

    .line 143
    :try_start_b
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_15

    :catch_a
    move-exception p2

    goto :goto_16

    :cond_10
    :goto_15
    if-eqz v3, :cond_11

    .line 146
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_11
    if-eqz v4, :cond_12

    .line 149
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_17

    .line 152
    :goto_16
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_17
    if-eqz p1, :cond_13

    .line 155
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_13
    throw p0

    .line 101
    :cond_14
    :goto_18
    new-instance p0, Lcom/powervision/gcs/utils/ShellUtils$CommandResult;

    invoke-direct {p0, v1, v0, v0}, Lcom/powervision/gcs/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
