.class public final Lcom/facebook/internal/NativeProtocol;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# static fields
.field public static final ACTION_FEED_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.FEED_DIALOG"

.field public static final ACTION_FEED_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.FEED_DIALOG"

.field public static final ACTION_LOGIN_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.LOGIN_DIALOG"

.field static final ACTION_LOGIN_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.LOGIN_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.OGACTIONPUBLISH_DIALOG"

.field public static final AUDIENCE_EVERYONE:Ljava/lang/String; = "EVERYONE"

.field public static final AUDIENCE_FRIENDS:Ljava/lang/String; = "ALL_FRIENDS"

.field public static final AUDIENCE_ME:Ljava/lang/String; = "SELF"

.field private static final BASIC_INFO:Ljava/lang/String; = "basic_info"

.field public static final CONTENT_SCHEME:Ljava/lang/String; = "content://"

.field public static final DIALOG_REQUEST_CODE:I = 0xfacf

.field public static final ERROR_APPLICATION_ERROR:Ljava/lang/String; = "ApplicationError"

.field public static final ERROR_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field public static final ERROR_PERMISSION_DENIED:Ljava/lang/String; = "PermissionDenied"

.field public static final ERROR_PROTOCOL_ERROR:Ljava/lang/String; = "ProtocolError"

.field public static final ERROR_SERVICE_DISABLED:Ljava/lang/String; = "ServiceDisabled"

.field public static final ERROR_UNKNOWN_ERROR:Ljava/lang/String; = "UnknownError"

.field public static final ERROR_USER_CANCELED:Ljava/lang/String; = "UserCanceled"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.platform.extra.ACCESS_TOKEN"

.field public static final EXTRA_ACTION:Ljava/lang/String; = "com.facebook.platform.extra.ACTION"

.field public static final EXTRA_ACTION_TYPE:Ljava/lang/String; = "com.facebook.platform.extra.ACTION_TYPE"

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_ID"

.field public static final EXTRA_APPLICATION_NAME:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_NAME"

.field public static final EXTRA_DATA_FAILURES_FATAL:Ljava/lang/String; = "com.facebook.platform.extra.DATA_FAILURES_FATAL"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.extra.DESCRIPTION"

.field public static final EXTRA_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

.field public static final EXTRA_FRIEND_TAGS:Ljava/lang/String; = "com.facebook.platform.extra.FRIENDS"

.field public static final EXTRA_GET_INSTALL_DATA_PACKAGE:Ljava/lang/String; = "com.facebook.platform.extra.INSTALLDATA_PACKAGE"

.field public static final EXTRA_IMAGE:Ljava/lang/String; = "com.facebook.platform.extra.IMAGE"

.field public static final EXTRA_LINK:Ljava/lang/String; = "com.facebook.platform.extra.LINK"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PERMISSIONS"

.field public static final EXTRA_PLACE_TAG:Ljava/lang/String; = "com.facebook.platform.extra.PLACE"

.field public static final EXTRA_PREVIEW_PROPERTY_NAME:Ljava/lang/String; = "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME"

.field public static final EXTRA_PROTOCOL_ACTION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_ACTION"

.field public static final EXTRA_PROTOCOL_CALL_ID:Ljava/lang/String; = "com.facebook.platform.protocol.CALL_ID"

.field public static final EXTRA_PROTOCOL_VERSION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_VERSION"

.field static final EXTRA_PROTOCOL_VERSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PROTOCOL_VERSIONS"

.field public static final EXTRA_REF:Ljava/lang/String; = "com.facebook.platform.extra.REF"

.field public static final EXTRA_SUBTITLE:Ljava/lang/String; = "com.facebook.platform.extra.SUBTITLE"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "com.facebook.platform.extra.TITLE"

.field public static final EXTRA_WRITE_PRIVACY:Ljava/lang/String; = "com.facebook.platform.extra.WRITE_PRIVACY"

.field static final FACEBOOK_PACKAGE:Ljava/lang/String; = "com.facebook.katana"

.field static final FACEBOOK_PROXY_AUTH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.ProxyAuth"

.field public static final FACEBOOK_PROXY_AUTH_APP_ID_KEY:Ljava/lang/String; = "client_id"

.field public static final FACEBOOK_PROXY_AUTH_E2E_KEY:Ljava/lang/String; = "e2e"

.field public static final FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY:Ljava/lang/String; = "scope"

.field static final FACEBOOK_TOKEN_REFRESH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.platform.TokenRefreshService"

.field public static final IMAGE_URL_KEY:Ljava/lang/String; = "url"

.field public static final IMAGE_USER_GENERATED_KEY:Ljava/lang/String; = "user_generated"

.field static final INTENT_ACTION_PLATFORM_ACTIVITY:Ljava/lang/String; = "com.facebook.platform.PLATFORM_ACTIVITY"

.field static final INTENT_ACTION_PLATFORM_SERVICE:Ljava/lang/String; = "com.facebook.platform.PLATFORM_SERVICE"

.field static final KATANA_SIGNATURE:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

.field private static final KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_GET_ACCESS_TOKEN_REPLY:I = 0x10001

.field public static final MESSAGE_GET_ACCESS_TOKEN_REQUEST:I = 0x10000

.field public static final MESSAGE_GET_INSTALL_DATA_REPLY:I = 0x10005

.field public static final MESSAGE_GET_INSTALL_DATA_REQUEST:I = 0x10004

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REPLY:I = 0x10003

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST:I = 0x10002

.field public static final NO_PROTOCOL_AVAILABLE:I = -0x1

.field public static final OPEN_GRAPH_CREATE_OBJECT_KEY:Ljava/lang/String; = "fbsdk:create_object"

.field public static final PLATFORM_PROVIDER:Ljava/lang/String; = "com.facebook.katana.provider.PlatformProvider"

.field public static final PLATFORM_PROVIDER_VERSIONS_URI:Landroid/net/Uri;

.field public static final PLATFORM_PROVIDER_VERSION_COLUMN:Ljava/lang/String; = "version"

.field public static final PROTOCOL_VERSION_20121101:I = 0x133060d

.field public static final PROTOCOL_VERSION_20130502:I = 0x1332ac6

.field public static final PROTOCOL_VERSION_20130618:I = 0x1332b3a

.field public static final STATUS_ERROR_CODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_CODE"

.field public static final STATUS_ERROR_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.status.ERROR_DESCRIPTION"

.field public static final STATUS_ERROR_JSON:Ljava/lang/String; = "com.facebook.platform.status.ERROR_JSON"

.field public static final STATUS_ERROR_SUBCODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_SUBCODE"

.field public static final STATUS_ERROR_TYPE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_TYPE"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 263
    const-string/jumbo v0, "content://com.facebook.katana.provider.PlatformProvider/versions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->PLATFORM_PROVIDER_VERSIONS_URI:Landroid/net/Uri;

    .line 270
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x1332b3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x1332ac6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x133060d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLoginDialog20121101Intent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "audience"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.katana"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const v3, 0x133060d

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    const-string/jumbo v3, "com.facebook.platform.action.request.LOGIN_DIALOG"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.platform.extra.PERMISSIONS"

    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->ensureDefaultPermissions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.platform.protocol.CALL_ID"

    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->generateCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.platform.extra.WRITE_PRIVACY"

    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->ensureDefaultAudience(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/facebook/internal/NativeProtocol;->validateKatanaActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 276
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.katana"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/facebook/internal/NativeProtocol;->validateKatanaActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.facebook.katana"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/facebook/internal/NativeProtocol;->validateKatanaServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "e2e"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.facebook.katana"

    const-string/jumbo v3, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "client_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 133
    const-string/jumbo v1, "scope"

    const-string/jumbo v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :cond_29
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 136
    const-string/jumbo v1, "e2e"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_35
    invoke-static {p0, v0}, Lcom/facebook/internal/NativeProtocol;->validateKatanaActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.facebook.katana"

    const-string/jumbo v3, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/facebook/internal/NativeProtocol;->validateKatanaServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static ensureDefaultAudience(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "audience"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 333
    const-string/jumbo p0, "SELF"

    .line 335
    .end local p0    # "audience":Ljava/lang/String;
    :cond_9
    return-object p0
.end method

.method private static ensureDefaultPermissions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b
    const-string/jumbo v3, "basic_info"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v2

    .line 355
    .end local v2    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    :goto_12
    return-object p0

    .line 346
    .restart local p0    # "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/Session;->isPublishPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v3, "basic_info"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_12

    .line 351
    .end local v1    # "permission":Ljava/lang/String;
    :cond_33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v2    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_b
.end method

.method private static generateCallId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 328
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorFromResult(Landroid/content/Intent;)Ljava/lang/Exception;
    .registers 4
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 313
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 314
    const/4 v2, 0x0

    .line 324
    :goto_7
    return-object v2

    .line 317
    :cond_8
    const-string/jumbo v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "description":Ljava/lang/String;
    const-string/jumbo v2, "UserCanceled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 321
    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 324
    :cond_25
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static getLatestAvailableProtocolVersion(Landroid/content/Context;I)I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minimumVersion"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v11, -0x1

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "version"

    aput-object v4, v2, v1

    .line 371
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->PLATFORM_PROVIDER_VERSIONS_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1b

    move v1, v11

    .line 392
    :goto_1a
    return v1

    .line 376
    :cond_1b
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 377
    .local v10, "versions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 378
    const-string/jumbo v1, "version"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 379
    .local v9, "version":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 382
    .end local v9    # "version":I
    :cond_39
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 383
    .local v8, "knownVersion":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p1, :cond_53

    move v1, v11

    .line 384
    goto :goto_1a

    .line 387
    :cond_53
    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 388
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1a

    .end local v8    # "knownVersion":Ljava/lang/Integer;
    :cond_5e
    move v1, v11

    .line 392
    goto :goto_1a
.end method

.method public static isErrorResult(Landroid/content/Intent;)Z
    .registers 2
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 309
    const-string/jumbo v0, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServiceDisabledResult20121101(Landroid/content/Intent;)Z
    .registers 5
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 359
    const-string/jumbo v3, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 360
    .local v1, "protocolVersion":I
    const-string/jumbo v3, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "errorType":Ljava/lang/String;
    const v3, 0x133060d

    if-ne v3, v1, :cond_1e

    const-string/jumbo v3, "ServiceDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method static validateKatanaActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_5

    move-object p1, v1

    .line 106
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_4
    return-object p1

    .line 97
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 98
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_12

    move-object p1, v1

    .line 99
    goto :goto_4

    .line 102
    :cond_12
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/facebook/internal/NativeProtocol;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object p1, v1

    .line 103
    goto :goto_4
.end method

.method static validateKatanaServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 110
    if-nez p1, :cond_5

    move-object p1, v1

    .line 123
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_4
    return-object p1

    .line 114
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 115
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_12

    move-object p1, v1

    .line 116
    goto :goto_4

    .line 119
    :cond_12
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/facebook/internal/NativeProtocol;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object p1, v1

    .line 120
    goto :goto_4
.end method

.method static final validateSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 68
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 69
    .local v2, "brand":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v0, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 70
    .local v0, "applicationFlags":I
    const-string/jumbo v10, "generic"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    and-int/lit8 v10, v0, 0x2

    if-eqz v10, :cond_18

    .line 89
    :cond_17
    :goto_17
    return v8

    .line 75
    :cond_18
    const/4 v6, 0x0

    .line 77
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_22} :catch_3b

    move-result-object v6

    .line 83
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_27
    if-ge v4, v5, :cond_3e

    aget-object v7, v1, v4

    .line 84
    .local v7, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 79
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "signature":Landroid/content/pm/Signature;
    :catch_3b
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v8, v9

    .line 80
    goto :goto_17

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "arr$":[Landroid/content/pm/Signature;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_3e
    move v8, v9

    .line 89
    goto :goto_17
.end method
