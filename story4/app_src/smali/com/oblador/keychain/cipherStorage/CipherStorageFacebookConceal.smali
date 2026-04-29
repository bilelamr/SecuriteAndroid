.class public Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;
.super Ljava/lang/Object;
.source "CipherStorageFacebookConceal.java"

# interfaces
.implements Lcom/oblador/keychain/cipherStorage/CipherStorage;


# instance fields
.field private final crypto:Lcom/facebook/crypto/Crypto;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;

    sget-object v1, Lcom/facebook/crypto/CryptoConfig;->KEY_256:Lcom/facebook/crypto/CryptoConfig;

    invoke-direct {v0, p1, v1}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;-><init>(Landroid/content/Context;Lcom/facebook/crypto/CryptoConfig;)V

    .line 24
    invoke-static {}, Lcom/facebook/android/crypto/keychain/AndroidConceal;->get()Lcom/facebook/android/crypto/keychain/AndroidConceal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/crypto/Conceal;->createDefaultCrypto(Lcom/facebook/crypto/keychain/KeyChain;)Lcom/facebook/crypto/Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    return-void
.end method

.method private createPasswordEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->getEntityPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pass"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/crypto/Entity;->create(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object p1

    return-object p1
.end method

.method private createUsernameEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->getEntityPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/crypto/Entity;->create(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object p1

    return-object p1
.end method

.method private getEntityPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RN_KEYCHAIN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;[B[B)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 57
    iget-object v1, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-virtual {v1}, Lcom/facebook/crypto/Crypto;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->createUsernameEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object v1

    .line 61
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->createPasswordEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object v2

    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-virtual {v3, p2, v1}, Lcom/facebook/crypto/Crypto;->decrypt([BLcom/facebook/crypto/Entity;)[B

    move-result-object p2

    .line 65
    iget-object v1, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-virtual {v1, p3, v2}, Lcom/facebook/crypto/Crypto;->decrypt([BLcom/facebook/crypto/Entity;)[B

    move-result-object p3

    .line 67
    new-instance v1, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;

    new-instance v2, Ljava/lang/String;

    .line 68
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p2, Ljava/lang/String;

    .line 69
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2, p2}, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p2

    .line 71
    new-instance p3, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decryption failed for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 58
    :cond_0
    new-instance p1, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const-string p2, "Crypto is missing"

    invoke-direct {p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 39
    iget-object v1, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-virtual {v1}, Lcom/facebook/crypto/Crypto;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->createUsernameEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object v1

    .line 43
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->createPasswordEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object v2

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v3, p2, v1}, Lcom/facebook/crypto/Crypto;->encrypt([BLcom/facebook/crypto/Entity;)[B

    move-result-object p2

    .line 47
    iget-object v1, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {v1, p3, v2}, Lcom/facebook/crypto/Crypto;->encrypt([BLcom/facebook/crypto/Entity;)[B

    move-result-object p3

    .line 49
    new-instance v0, Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;

    invoke-direct {v0, p2, p3, p0}, Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;-><init>([B[BLcom/oblador/keychain/cipherStorage/CipherStorage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 51
    new-instance p3, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encryption failed for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 40
    :cond_0
    new-instance p1, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const-string p2, "Crypto is missing"

    invoke-direct {p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCipherStorageName()Ljava/lang/String;
    .locals 1

    const-string v0, "FacebookConceal"

    return-object v0
.end method

.method public getMinSupportedApiLevel()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
