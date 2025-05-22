.class public Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;
.super Ljava/lang/Object;
.source "DigestUtilities.java"


# static fields
.field public static final SESSION_HA1:Ljava/lang/String;

.field public static final SUPPORTED_QOPS:[Ljava/lang/String;

.field private static md5:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".SessionHA1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    :try_start_0
    const-string v0, "MD5"

    .line 49
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "auth"

    const-string v1, "auth-int"

    .line 58
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SUPPORTED_QOPS:[Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeResponseValue(Lorg/apache/mina/core/session/IoSession;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/AuthenticationException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "md5-sess"

    const-string v1, "algorithm"

    const/4 v2, 0x0

    .line 79
    invoke-static {p1, v1, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x3a

    if-eqz v0, :cond_1

    .line 81
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    sget-object p3, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, p3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    check-cast p3, [B

    goto/16 :goto_1

    .line 83
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "username"

    .line 84
    invoke-static {p1, v5, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "realm"

    .line 87
    invoke-static {p1, v5, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 98
    sget-object p3, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter p3

    .line 99
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 100
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 101
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-static {v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "nonce"

    .line 106
    invoke-static {p1, v0, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "cnonce"

    .line 108
    invoke-static {p1, v0, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v0

    .line 111
    :try_start_1
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 112
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    .line 113
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, v0, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 113
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 101
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 117
    :cond_3
    sget-object p3, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter p3

    .line 118
    :try_start_4
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 119
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 120
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object p3, v0

    .line 126
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "uri"

    .line 128
    invoke-static {p1, p2, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "qop"

    .line 130
    invoke-static {p1, p2, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "auth-int"

    .line 132
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    sget-object v2, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 136
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 137
    :try_start_5
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 138
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 139
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 139
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 145
    :cond_4
    :goto_2
    sget-object p0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter p0

    .line 146
    :try_start_7
    sget-object p5, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p5}, Ljava/security/MessageDigest;->reset()V

    .line 147
    sget-object p5, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p5

    .line 148
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-static {p3}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "nonce"

    invoke-static {p1, p3, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":00000001:"

    .line 153
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "cnonce"

    .line 155
    invoke-static {p1, p3, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {p5}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    sget-object p1, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter p1

    .line 162
    :try_start_8
    sget-object p2, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p2}, Ljava/security/MessageDigest;->reset()V

    .line 163
    sget-object p2, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 164
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 166
    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3
    move-exception p0

    .line 164
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :catchall_4
    move-exception p1

    .line 148
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p1

    :catchall_5
    move-exception p0

    .line 120
    :try_start_b
    monitor-exit p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw p0
.end method
