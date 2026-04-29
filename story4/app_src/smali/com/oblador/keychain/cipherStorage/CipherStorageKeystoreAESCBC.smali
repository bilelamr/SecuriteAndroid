.class public Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;
.super Ljava/lang/Object;
.source "CipherStorageKeystoreAESCBC.java"

# interfaces
.implements Lcom/oblador/keychain/cipherStorage/CipherStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decryptBytes(Ljava/security/Key;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 155
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 158
    invoke-direct {p0, v1}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->readIvFromStream(Ljava/io/ByteArrayInputStream;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p2

    const/4 v2, 0x2

    .line 159
    invoke-virtual {v0, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 161
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 163
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 166
    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    .line 172
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 170
    :cond_0
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    new-instance p2, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const-string v0, "Could not decrypt bytes"

    invoke-direct {p2, v0, p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private encryptString(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 137
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 138
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 139
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 142
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 144
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string v0, "UTF-8"

    .line 145
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v1, p3}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 146
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 147
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 149
    new-instance p3, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not encrypt value for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private getDefaultServiceIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "RN_KEYCHAIN_DEFAULT_ALIAS"

    :cond_0
    return-object p1
.end method

.method private getKeyStoreAndLoad()Ljava/security/KeyStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Lcom/oblador/keychain/exceptions/KeyStoreAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 186
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 190
    :goto_0
    new-instance v1, Lcom/oblador/keychain/exceptions/KeyStoreAccessException;

    const-string v2, "Could not access Keystore"

    invoke-direct {v1, v2, v0}, Lcom/oblador/keychain/exceptions/KeyStoreAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readIvFromStream(Ljava/io/ByteArrayInputStream;)Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 180
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 181
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;[B[B)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->getDefaultServiceIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->getKeyStoreAndLoad()Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->decryptBytes(Ljava/security/Key;[B)Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-direct {p0, p1, p3}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->decryptBytes(Ljava/security/Key;[B)Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance p3, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;

    invoke-direct {p3, p2, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/oblador/keychain/exceptions/KeyStoreAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 114
    new-instance p2, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 112
    new-instance p2, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const-string p3, "Could not access Keystore"

    invoke-direct {p2, p3, p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    .line 110
    :goto_0
    new-instance p2, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const-string p3, "Could not get key from Keystore"

    invoke-direct {p2, p3, p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->getDefaultServiceIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->getKeyStoreAndLoad()Ljava/security/KeyStore;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/16 v2, 0x100

    .line 72
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    const-string v2, "AES"

    const-string v3, "AndroidKeyStore"

    .line 75
    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    :cond_0
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0, p1, p2}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->encryptString(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    .line 84
    invoke-direct {p0, v0, p1, p3}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->encryptString(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    .line 86
    new-instance v0, Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;

    invoke-direct {v0, p2, p3, p0}, Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;-><init>([B[BLcom/oblador/keychain/cipherStorage/CipherStorage;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/oblador/keychain/exceptions/KeyStoreAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 92
    new-instance p2, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    .line 90
    :goto_0
    new-instance p3, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not access Keystore for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_3
    move-exception p2

    goto :goto_1

    :catch_4
    move-exception p2

    goto :goto_1

    :catch_5
    move-exception p2

    goto :goto_1

    :catch_6
    move-exception p2

    .line 88
    :goto_1
    new-instance p3, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not encrypt data for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public getCipherStorageName()Ljava/lang/String;
    .locals 1

    const-string v0, "KeystoreAESCBC"

    return-object v0
.end method

.method public getMinSupportedApiLevel()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/KeyStoreAccessException;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->getDefaultServiceIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;->getKeyStoreAndLoad()Ljava/security/KeyStore;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 131
    new-instance v0, Lcom/oblador/keychain/exceptions/KeyStoreAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oblador/keychain/exceptions/KeyStoreAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 129
    new-instance v0, Lcom/oblador/keychain/exceptions/KeyStoreAccessException;

    const-string v1, "Failed to access Keystore"

    invoke-direct {v0, v1, p1}, Lcom/oblador/keychain/exceptions/KeyStoreAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
