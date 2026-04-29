.class public Lcom/facebook/android/crypto/keychain/SecureRandomFix;
.super Ljava/lang/Object;
.source "SecureRandomFix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/crypto/keychain/SecureRandomFix$LinuxPRNGSecureRandom;,
        Lcom/facebook/android/crypto/keychain/SecureRandomFix$LinuxPRNGSecureRandomProvider;,
        Lcom/facebook/android/crypto/keychain/SecureRandomFix$FixException;
    }
.end annotation


# static fields
.field private static sFixApplied:Z


# direct methods
.method static synthetic access$000()[B
    .locals 1

    .line 43
    invoke-static {}, Lcom/facebook/android/crypto/keychain/SecureRandomFix;->generateSeed()[B

    move-result-object v0

    return-object v0
.end method

.method private static generateSeed()[B
    .locals 4

    .line 122
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 127
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 128
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    invoke-static {}, Lcom/facebook/android/crypto/keychain/SecureRandomFix;->getBuildFingerprintAndDeviceSerial()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 130
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to generate seed"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getBuildFingerprintAndDeviceSerial()[B
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-static {}, Lcom/facebook/android/crypto/keychain/SecureRandomFix;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 encoding not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDeviceSerialNumber()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 163
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static declared-synchronized tryApplyFixes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/android/crypto/keychain/SecureRandomFix$FixException;
        }
    .end annotation

    const-class v0, Lcom/facebook/android/crypto/keychain/SecureRandomFix;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-boolean v1, Lcom/facebook/android/crypto/keychain/SecureRandomFix;->sFixApplied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 72
    monitor-exit v0

    return-void

    .line 75
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/android/crypto/keychain/SecureRandomFix;->tryApplyOpenSSLFix()V

    .line 76
    invoke-static {}, Lcom/facebook/android/crypto/keychain/SecureRandomFix;->tryInstallLinuxPRNGSecureRandom()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 85
    :try_start_2
    sput-boolean v1, Lcom/facebook/android/crypto/keychain/SecureRandomFix;->sFixApplied:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 82
    :try_start_3
    new-instance v2, Lcom/facebook/android/crypto/keychain/SecureRandomFix$FixException;

    invoke-direct {v2, v1}, Lcom/facebook/android/crypto/keychain/SecureRandomFix$FixException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static tryApplyOpenSSLFix()V
    .locals 8

    const-string v0, "org.apache.harmony.xnet.provider.jsse.NativeCrypto"

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "RAND_seed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [B

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 98
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/facebook/android/crypto/keychain/SecureRandomFix;->generateSeed()[B

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "RAND_load_file"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    .line 104
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "/dev/urandom"

    aput-object v2, v1, v6

    const/16 v2, 0x400

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    return-void

    .line 107
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected number of bytes read from Linux PRNG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to seed OpenSSL PRNG"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private static tryInstallLinuxPRNGSecureRandom()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "SecureRandom.SHA1PRNG"

    .line 186
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 187
    array-length v2, v0

    if-lt v2, v1, :cond_1

    const-class v2, Lcom/facebook/android/crypto/keychain/SecureRandomFix$LinuxPRNGSecureRandomProvider;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    :cond_1
    new-instance v0, Lcom/facebook/android/crypto/keychain/SecureRandomFix$LinuxPRNGSecureRandomProvider;

    invoke-direct {v0}, Lcom/facebook/android/crypto/keychain/SecureRandomFix$LinuxPRNGSecureRandomProvider;-><init>()V

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 197
    :cond_2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 198
    const-class v1, Lcom/facebook/android/crypto/keychain/SecureRandomFix$LinuxPRNGSecureRandomProvider;

    .line 199
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 207
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const-class v1, Lcom/facebook/android/crypto/keychain/SecureRandomFix$LinuxPRNGSecureRandomProvider;

    .line 212
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 213
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "SHA1PRNG not available"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 200
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new SecureRandom() backed by wrong Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
