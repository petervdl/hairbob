.class public Lcom/airbnb/android/fragments/OauthFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "OauthFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/OnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/OauthFragment$2;,
        Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;
    }
.end annotation


# static fields
.field private static final ARG_SERVICE:Ljava/lang/String; = "service"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/airbnb/android/activities/OauthActivity$Service;

.field private mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private serviceAssertionType:Ljava/lang/String;

.field private serviceAuthorizationURL:Ljava/lang/String;

.field private serviceClientId:Ljava/lang/String;

.field private serviceClientSecret:Ljava/lang/String;

.field private servicePermissions:Ljava/lang/String;

.field private serviceRedirectURI:Ljava/lang/String;

.field private serviceTokenURL:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/airbnb/android/fragments/OauthFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/OauthFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 216
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/OauthFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/OauthFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceRedirectURI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/OauthFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/OauthFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/OauthFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/OauthFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/OauthFragment;->callback(Ljava/lang/String;)V

    return-void
.end method

.method private callback(Ljava/lang/String;)V
    .registers 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string/jumbo v1, "linked_in_v2"

    new-instance v2, Lcom/airbnb/android/fragments/OauthFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/OauthFragment$1;-><init>(Lcom/airbnb/android/fragments/OauthFragment;)V

    invoke-static {p1, v1, v2}, Lcom/airbnb/android/requests/OAuthCallbackRequest;->oauthCallbackServerRequest(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/OAuthCallbackRequest;

    move-result-object v0

    .line 123
    .local v0, "request":Lcom/airbnb/android/requests/OAuthCallbackRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/OAuthCallbackRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 125
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/OauthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 126
    return-void
.end method

.method private connect()V
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceAuthorizationURL:Ljava/lang/String;

    .line 93
    .local v0, "authorizationUrl":Ljava/lang/String;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/OauthFragment;->generateNonce()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/OauthFragment;->state:Ljava/lang/String;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&scope="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/OauthFragment;->servicePermissions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/OauthFragment;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&redirect_uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceRedirectURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/airbnb/android/fragments/OauthFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private generateNonce()Ljava/lang/String;
    .registers 4

    .prologue
    .line 133
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 134
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x82

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAccessTokenFromResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "accessToken":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/airbnb/android/fragments/OauthFragment;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v5, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v4, p1, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 141
    .local v2, "df":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string/jumbo v4, "access_token"

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;
    :try_end_15
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_1 .. :try_end_15} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_3f

    move-result-object v0

    .line 154
    .end local v2    # "df":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_16
    return-object v0

    .line 142
    :catch_17
    move-exception v3

    .line 143
    .local v3, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    sget-object v4, Lcom/airbnb/android/activities/OauthActivity$Service;->FACEBOOK:Lcom/airbnb/android/activities/OauthActivity$Service;

    iget-object v5, p0, Lcom/airbnb/android/fragments/OauthFragment;->mService:Lcom/airbnb/android/activities/OauthActivity$Service;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/activities/OauthActivity$Service;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 144
    const-string/jumbo v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 145
    .local v1, "accessTokenParam":Ljava/lang/String;
    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v0, v4, v5

    .line 147
    .end local v1    # "accessTokenParam":Ljava/lang/String;
    :cond_36
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V

    goto :goto_16

    .line 148
    .end local v3    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_3a
    move-exception v3

    .line 149
    .local v3, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V

    goto :goto_16

    .line 150
    .end local v3    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_3f
    move-exception v3

    .line 151
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method

.method private getRefreshTokenFromResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 160
    .local v2, "refreshToken":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/airbnb/android/fragments/OauthFragment;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v4, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3, p1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 162
    .local v0, "df":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 163
    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;
    :try_end_1e
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_1 .. :try_end_1e} :catch_20
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_1 .. :try_end_1e} :catch_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_2a

    move-result-object v2

    .line 173
    .end local v0    # "df":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1f
    :goto_1f
    return-object v2

    .line 165
    :catch_20
    move-exception v1

    .line 166
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V

    goto :goto_1f

    .line 167
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_25
    move-exception v1

    .line 168
    .local v1, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V

    goto :goto_1f

    .line 169
    .end local v1    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2a
    move-exception v1

    .line 170
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f
.end method

.method private initializeService()V
    .registers 3

    .prologue
    .line 177
    sget-object v0, Lcom/airbnb/android/fragments/OauthFragment$2;->$SwitchMap$com$airbnb$android$activities$OauthActivity$Service:[I

    iget-object v1, p0, Lcom/airbnb/android/fragments/OauthFragment;->mService:Lcom/airbnb/android/activities/OauthActivity$Service;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/OauthActivity$Service;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_80

    .line 207
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "OauthActivity: No recognized service"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    :goto_15
    return-void

    .line 179
    :pswitch_16
    const v0, 0x7f0e01d5

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/OauthFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceClientId:Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "email,user_activities,user_birthday,user_education_history,user_hometown,user_interests,user_likes,user_location"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->servicePermissions:Ljava/lang/String;

    .line 182
    const-string/jumbo v0, "https://www.facebook.com/connect/login_success.html"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceRedirectURI:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "https://www.facebook.com/dialog/oauth?response_type=code"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceAuthorizationURL:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "https://graph.facebook.com/oauth/access_token"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceTokenURL:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "https://graph.facebook.com/me"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceAssertionType:Ljava/lang/String;

    goto :goto_15

    .line 188
    :pswitch_39
    const v0, 0x7f0e0216

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/OauthFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceClientId:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "https://www.googleapis.com/auth/userinfo.email+https://www.googleapis.com/auth/userinfo.profile+https://www.google.com/m8/feeds+https://www.googleapis.com/auth/drive.metadata.readonly"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->servicePermissions:Ljava/lang/String;

    .line 193
    const-string/jumbo v0, "https://www.airbnb.com/oauth_callback"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceRedirectURI:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "https://accounts.google.com/o/oauth2/auth?response_type=code&access_type=offline"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceAuthorizationURL:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "https://accounts.google.com/o/oauth2/token"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceTokenURL:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "https://accounts.google.com/o/oauth2"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceAssertionType:Ljava/lang/String;

    goto :goto_15

    .line 199
    :pswitch_5c
    const v0, 0x7f0e03c1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/OauthFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceClientId:Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "r_fullprofile,r_emailaddress,r_network"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->servicePermissions:Ljava/lang/String;

    .line 201
    const-string/jumbo v0, "https://www.airbnb.com/oauth_callback"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceRedirectURI:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "https://www.linkedin.com/uas/oauth2/authorization?response_type=code"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceAuthorizationURL:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "https://www.linkedin.com/uas/oauth2/accessToken"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceTokenURL:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "https://api.linkedin.com/v1"

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->serviceAssertionType:Ljava/lang/String;

    goto :goto_15

    .line 177
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_16
        :pswitch_39
        :pswitch_5c
    .end packed-switch
.end method

.method public static newInstance(Lcom/airbnb/android/activities/OauthActivity$Service;)Lcom/airbnb/android/fragments/OauthFragment;
    .registers 5
    .param p0, "service"    # Lcom/airbnb/android/activities/OauthActivity$Service;

    .prologue
    .line 52
    new-instance v1, Lcom/airbnb/android/fragments/OauthFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/OauthFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/airbnb/android/fragments/OauthFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "service"

    invoke-virtual {p0}, Lcom/airbnb/android/activities/OauthActivity$Service;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/OauthFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/airbnb/android/activities/OauthActivity$Service;->values()[Lcom/airbnb/android/activities/OauthActivity$Service;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/OauthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "service"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment;->mService:Lcom/airbnb/android/activities/OauthActivity$Service;

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 69
    const v1, 0x7f0300c5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080232

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/OauthFragment;->webview:Landroid/webkit/WebView;

    .line 71
    iget-object v1, p0, Lcom/airbnb/android/fragments/OauthFragment;->webview:Landroid/webkit/WebView;

    new-instance v2, Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;-><init>(Lcom/airbnb/android/fragments/OauthFragment;Lcom/airbnb/android/fragments/OauthFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    iget-object v1, p0, Lcom/airbnb/android/fragments/OauthFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/fragments/OauthFragment;->initializeService()V

    .line 76
    invoke-direct {p0}, Lcom/airbnb/android/fragments/OauthFragment;->connect()V

    .line 78
    return-object v0
.end method
