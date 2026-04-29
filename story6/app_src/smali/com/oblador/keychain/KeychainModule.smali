.class public Lcom/oblador/keychain/KeychainModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "KeychainModule.java"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final E_CRYPTO_FAILED:Ljava/lang/String; = "E_CRYPTO_FAILED"

.field public static final E_EMPTY_PARAMETERS:Ljava/lang/String; = "E_EMPTY_PARAMETERS"

.field public static final E_KEYSTORE_ACCESS_ERROR:Ljava/lang/String; = "E_KEYSTORE_ACCESS_ERROR"

.field public static final E_SUPPORTED_BIOMETRY_ERROR:Ljava/lang/String; = "E_SUPPORTED_BIOMETRY_ERROR"

.field public static final FINGERPRINT_SUPPORTED_NAME:Ljava/lang/String; = "Fingerprint"

.field public static final KEYCHAIN_MODULE:Ljava/lang/String; = "RNKeychainManager"


# instance fields
.field private final cipherStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oblador/keychain/cipherStorage/CipherStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsStorage:Lcom/oblador/keychain/PrefsStorage;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oblador/keychain/KeychainModule;->cipherStorageMap:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/oblador/keychain/PrefsStorage;

    invoke-direct {v0, p1}, Lcom/oblador/keychain/PrefsStorage;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    .line 50
    new-instance v0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;

    invoke-direct {v0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {p0, v0}, Lcom/oblador/keychain/KeychainModule;->addCipherStorageToMap(Lcom/oblador/keychain/cipherStorage/CipherStorage;)V

    .line 51
    new-instance p1, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;

    invoke-direct {p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;-><init>()V

    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->addCipherStorageToMap(Lcom/oblador/keychain/cipherStorage/CipherStorage;)V

    return-void
.end method

.method private addCipherStorageToMap(Lcom/oblador/keychain/cipherStorage/CipherStorage;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->cipherStorageMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getCipherStorageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getCipherStorageByName(Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->cipherStorageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oblador/keychain/cipherStorage/CipherStorage;

    return-object p1
.end method

.method private getCipherStorageForCurrentAPILevel()Lcom/oblador/keychain/cipherStorage/CipherStorage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 186
    iget-object v1, p0, Lcom/oblador/keychain/KeychainModule;->cipherStorageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oblador/keychain/cipherStorage/CipherStorage;

    .line 187
    invoke-interface {v3}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getMinSupportedApiLevel()I

    move-result v4

    if-gt v4, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v2, :cond_2

    .line 191
    invoke-interface {v2}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getMinSupportedApiLevel()I

    move-result v5

    if-le v4, v5, :cond_0

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    return-object v2

    .line 196
    :cond_4
    new-instance v0, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Android SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private isFingerprintAuthAvailable()Z
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oblador/keychain/DeviceAvailability;->isFingerprintAuthAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getGenericPasswordForOptions(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "RNKeychainManager"

    .line 84
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageForCurrentAPILevel()Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {v2, p1}, Lcom/oblador/keychain/PrefsStorage;->getEncryptedEntry(Ljava/lang/String;)Lcom/oblador/keychain/PrefsStorage$ResultSet;

    move-result-object v2

    if-nez v2, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry found for service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 96
    :cond_0
    iget-object v3, v2, Lcom/oblador/keychain/PrefsStorage$ResultSet;->cipherStorageName:Ljava/lang/String;

    invoke-interface {v1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getCipherStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, v2, Lcom/oblador/keychain/PrefsStorage$ResultSet;->usernameBytes:[B

    iget-object v2, v2, Lcom/oblador/keychain/PrefsStorage$ResultSet;->passwordBytes:[B

    invoke-interface {v1, p1, v3, v2}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->decrypt(Ljava/lang/String;[B[B)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v3, v2, Lcom/oblador/keychain/PrefsStorage$ResultSet;->cipherStorageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageByName(Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v3

    .line 104
    iget-object v4, v2, Lcom/oblador/keychain/PrefsStorage$ResultSet;->usernameBytes:[B

    iget-object v2, v2, Lcom/oblador/keychain/PrefsStorage$ResultSet;->passwordBytes:[B

    invoke-interface {v3, p1, v4, v2}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->decrypt(Ljava/lang/String;[B[B)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;

    move-result-object v2

    .line 106
    iget-object v4, v2, Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;->username:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;->password:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, p1, v4, v5}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;

    move-result-object v1

    .line 108
    iget-object v4, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {v4, p1, v1}, Lcom/oblador/keychain/PrefsStorage;->storeEncryptedEntry(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;)V

    .line 110
    invoke-interface {v3, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->removeKey(Ljava/lang/String;)V

    move-object v1, v2

    .line 113
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "service"

    .line 115
    invoke-interface {v2, v3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "username"

    .line 116
    iget-object v3, v1, Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;->username:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 117
    iget-object v1, v1, Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;->password:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/KeyStoreAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oblador/keychain/exceptions/CryptoFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "E_CRYPTO_FAILED"

    .line 125
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "E_KEYSTORE_ACCESS_ERROR"

    .line 122
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getInternetCredentialsForServer(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 159
    invoke-virtual {p0, p1, p3}, Lcom/oblador/keychain/KeychainModule;->getGenericPasswordForOptions(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNKeychainManager"

    return-object v0
.end method

.method public getSupportedBiometryType(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->isFingerprintAuthAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fingerprint"

    .line 172
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNKeychainManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "E_SUPPORTED_BIOMETRY_ERROR"

    .line 178
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public resetGenericPasswordForOptions(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 132
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {v0, p1}, Lcom/oblador/keychain/PrefsStorage;->getEncryptedEntry(Ljava/lang/String;)Lcom/oblador/keychain/PrefsStorage$ResultSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, v0, Lcom/oblador/keychain/PrefsStorage$ResultSet;->cipherStorageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageByName(Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->removeKey(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {v0, p1}, Lcom/oblador/keychain/PrefsStorage;->removeEntry(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/KeyStoreAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNKeychainManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "E_KEYSTORE_ACCESS_ERROR"

    .line 148
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public resetInternetCredentialsForServer(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 164
    invoke-virtual {p0, p1, p3}, Lcom/oblador/keychain/KeychainModule;->resetGenericPasswordForOptions(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public setGenericPasswordForOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "RNKeychainManager"

    if-eqz p2, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageForCurrentAPILevel()Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v1

    .line 68
    invoke-interface {v1, p1, p2, p3}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;

    move-result-object p2

    .line 69
    iget-object p3, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {p3, p1, p2}, Lcom/oblador/keychain/PrefsStorage;->storeEncryptedEntry(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;)V

    const/4 p1, 0x1

    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Lcom/oblador/keychain/exceptions/EmptyParameterException;

    const-string p2, "you passed empty or null username/password"

    invoke-direct {p1, p2}, Lcom/oblador/keychain/exceptions/EmptyParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/EmptyParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oblador/keychain/exceptions/CryptoFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "E_CRYPTO_FAILED"

    .line 77
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "E_EMPTY_PARAMETERS"

    .line 74
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setInternetCredentialsForServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 154
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/oblador/keychain/KeychainModule;->setGenericPasswordForOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
