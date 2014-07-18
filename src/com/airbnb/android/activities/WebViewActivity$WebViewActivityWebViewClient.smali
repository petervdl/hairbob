.class public Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WebViewActivityWebViewClient"
.end annotation


# static fields
.field private static final CUSTOM_URL_SCHEME_AIRBNB:Ljava/lang/String; = "airbnb://"

.field private static final CUSTOM_URL_SCHEME_BROWSER:Ljava/lang/String; = "externalhttp://"

.field private static final CUSTOM_URL_SCHEME_BROWSER_SSL:Ljava/lang/String; = "externalhttps://"

.field private static final PATH_GROUPS:Ljava/lang/String; = "/groups"

.field private static final PATH_HELP:Ljava/lang/String; = "/account/help"

.field private static final PATH_LISTINGS:Ljava/lang/String; = "/managelistings"

.field private static final PATH_PHOTOGRAPHY:Ljava/lang/String; = "/prophotography"

.field private static final PATH_SETTINGS:Ljava/lang/String; = "/account/settings"


# instance fields
.field private mPattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/airbnb/android/activities/WebViewActivity;


# direct methods
.method protected constructor <init>(Lcom/airbnb/android/activities/WebViewActivity;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private formatCustomSchemeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 338
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 339
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v2, "airbnb:///"

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPattern()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->mPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_d

    .line 344
    const-string/jumbo v0, "^airbnb:[/]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->mPattern:Ljava/util/regex/Pattern;

    .line 346
    :cond_d
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->mPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private goToOnlyListingForUser(Lcom/airbnb/android/models/User;)V
    .registers 6
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 309
    new-instance v0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$2;

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;-><init>(Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$2;-><init>(Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    .line 331
    .local v0, "request":Lcom/airbnb/android/requests/MySpacesRequest;
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/WebViewActivity;->enableLoading()V

    .line 332
    invoke-virtual {v0}, Lcom/airbnb/android/requests/MySpacesRequest;->execute()V

    .line 333
    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 351
    # getter for: Lcom/airbnb/android/activities/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/BuildHelper;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/WebViewActivity;->enableLoading()V

    .line 353
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 357
    # getter for: Lcom/airbnb/android/activities/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onReceivedError"

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/BuildHelper;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "backup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 360
    .local v0, "backup":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    iget-object v1, v1, Lcom/airbnb/android/activities/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, -0x2

    if-ne p2, v1, :cond_35

    if-eqz v0, :cond_35

    .line 361
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 362
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/WebViewActivity;->finish()V

    .line 364
    :cond_35
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 18
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 241
    # getter for: Lcom/airbnb/android/activities/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "shouldOverrideUrlLoading"

    invoke-static {v13, v14}, Lcom/airbnb/android/utils/BuildHelper;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v13, "mailto:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_20

    const-string/jumbo v13, "tel:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_44

    .line 243
    :cond_20
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .local v6, "intent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v13}, Lcom/airbnb/android/activities/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_42

    .line 245
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v13, v6}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    :cond_42
    const/4 v13, 0x1

    .line 304
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_43
    return v13

    .line 250
    :cond_44
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->startsWithExplicitBrowserScheme(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_77

    .line 251
    const-string/jumbo v13, "externalhttp://"

    const-string/jumbo v14, "http://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 252
    const-string/jumbo v13, "externalhttps://"

    const-string/jumbo v14, "https://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 253
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v13, v6}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 255
    const/4 v13, 0x1

    goto :goto_43

    .line 258
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_77
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->startsWithAirbnbUrlScheme(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 259
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->formatCustomSchemeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "formattedUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 263
    .local v8, "path":Ljava/lang/String;
    const-string/jumbo v13, "/managelistings"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b8

    .line 265
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-static {v13}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 266
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getListingsCount()I

    move-result v7

    .line 268
    .local v7, "listingsCount":I
    const/4 v13, 0x1

    if-ne v7, v13, :cond_ac

    .line 269
    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->goToOnlyListingForUser(Lcom/airbnb/android/models/User;)V

    .line 274
    :goto_aa
    const/4 v13, 0x1

    goto :goto_43

    .line 271
    :cond_ac
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-static {v13}, Lcom/airbnb/android/activities/SpacesActivity;->intentForSpacesList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 272
    .local v11, "spacesListIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v13, v11}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_aa

    .line 276
    .end local v1    # "currentUser":Lcom/airbnb/android/models/User;
    .end local v7    # "listingsCount":I
    .end local v11    # "spacesListIntent":Landroid/content/Intent;
    :cond_b8
    const-string/jumbo v13, "/prophotography"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_cf

    .line 277
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-static {v13}, Lcom/airbnb/android/activities/ProPhotographyActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 278
    .local v9, "photoIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v13, v9}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    const/4 v13, 0x1

    goto/16 :goto_43

    .line 281
    .end local v9    # "photoIntent":Landroid/content/Intent;
    :cond_cf
    const-string/jumbo v13, "/account/settings"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 282
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-static {v13}, Lcom/airbnb/android/activities/SettingsActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    .line 283
    .local v10, "settingsIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v13, v10}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    const/4 v13, 0x1

    goto/16 :goto_43

    .line 286
    .end local v10    # "settingsIntent":Landroid/content/Intent;
    :cond_e6
    const-string/jumbo v13, "/groups"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10a

    .line 287
    sget-object v13, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOSPITALITY:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v13}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 288
    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    .line 289
    .local v4, "groupsUri":Lcom/airbnb/android/models/groups/GroupsUri;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/airbnb/android/models/groups/GroupsUri;->setForceBack(Z)V

    .line 290
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-static {v13, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v3

    .line 291
    .local v3, "groupsIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v13, v3}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    const/4 v13, 0x1

    goto/16 :goto_43

    .line 294
    .end local v3    # "groupsIntent":Landroid/content/Intent;
    .end local v4    # "groupsUri":Lcom/airbnb/android/models/groups/GroupsUri;
    :cond_10a
    const-string/jumbo v13, "/account/help"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 295
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-static {v13}, Lcom/airbnb/android/activities/CustomerServiceActivity;->intentForCustomerService(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    .line 296
    .local v12, "supportIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v13, v12}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 297
    const/4 v13, 0x1

    goto/16 :goto_43

    .line 301
    .end local v2    # "formattedUrl":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v12    # "supportIntent":Landroid/content/Intent;
    :cond_121
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "host":Ljava/lang/String;
    iget-object v13, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    move-object/from16 v0, p2

    # invokes: Lcom/airbnb/android/activities/WebViewActivity;->loadUrlWithHeadersIfNeeded(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v0, v5}, Lcom/airbnb/android/activities/WebViewActivity;->access$100(Lcom/airbnb/android/activities/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_43
.end method

.method protected startsWithAirbnbUrlScheme(Ljava/lang/String;)Z
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string/jumbo v0, "airbnb://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected startsWithExplicitBrowserScheme(Ljava/lang/String;)Z
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string/jumbo v0, "externalhttp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "externalhttps://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
