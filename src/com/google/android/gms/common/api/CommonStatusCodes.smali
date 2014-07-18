.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# direct methods
.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3
    .param p0, "statusCode"    # I

    .prologue
    sparse-switch p0, :sswitch_data_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :sswitch_18
    const-string/jumbo v0, "SUCCESS_CACHE"

    goto :goto_17

    :sswitch_1c
    const-string/jumbo v0, "SUCCESS"

    goto :goto_17

    :sswitch_20
    const-string/jumbo v0, "SERVICE_MISSING"

    goto :goto_17

    :sswitch_24
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_17

    :sswitch_28
    const-string/jumbo v0, "SERVICE_DISABLED"

    goto :goto_17

    :sswitch_2c
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    goto :goto_17

    :sswitch_30
    const-string/jumbo v0, "INVALID_ACCOUNT"

    goto :goto_17

    :sswitch_34
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    goto :goto_17

    :sswitch_38
    const-string/jumbo v0, "NETWORK_ERROR"

    goto :goto_17

    :sswitch_3c
    const-string/jumbo v0, "INTERNAL_ERROR"

    goto :goto_17

    :sswitch_40
    const-string/jumbo v0, "SERVICE_INVALID"

    goto :goto_17

    :sswitch_44
    const-string/jumbo v0, "DEVELOPER_ERROR"

    goto :goto_17

    :sswitch_48
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    goto :goto_17

    :sswitch_4c
    const-string/jumbo v0, "AUTH_API_INVALID_CREDENTIALS"

    goto :goto_17

    :sswitch_50
    const-string/jumbo v0, "AUTH_API_ACCESS_FORBIDDEN"

    goto :goto_17

    :sswitch_54
    const-string/jumbo v0, "AUTH_API_CLIENT_ERROR"

    goto :goto_17

    :sswitch_58
    const-string/jumbo v0, "AUTH_API_SERVER_ERROR"

    goto :goto_17

    :sswitch_5c
    const-string/jumbo v0, "AUTH_TOKEN_ERROR"

    goto :goto_17

    :sswitch_60
    const-string/jumbo v0, "AUTH_URL_RESOLUTION"

    goto :goto_17

    :sswitch_data_64
    .sparse-switch
        -0x1 -> :sswitch_18
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_20
        0x2 -> :sswitch_24
        0x3 -> :sswitch_28
        0x4 -> :sswitch_2c
        0x5 -> :sswitch_30
        0x6 -> :sswitch_34
        0x7 -> :sswitch_38
        0x8 -> :sswitch_3c
        0x9 -> :sswitch_40
        0xa -> :sswitch_44
        0xb -> :sswitch_48
        0xbb8 -> :sswitch_4c
        0xbb9 -> :sswitch_50
        0xbba -> :sswitch_54
        0xbbb -> :sswitch_58
        0xbbc -> :sswitch_5c
        0xbbd -> :sswitch_60
    .end sparse-switch
.end method
