.class public Lcom/airbnb/android/activities/HospitalityWebViewActivity;
.super Lcom/airbnb/android/activities/WebViewActivity;
.source "HospitalityWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/HospitalityWebViewActivity$1;,
        Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;,
        Lcom/airbnb/android/activities/HospitalityWebViewActivity$HospitalityWebViewActivityWebViewClient;,
        Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;
    }
.end annotation


# static fields
.field protected static final KEY_ITEMS:Ljava/lang/String; = "items"

.field protected static final KEY_SLUG:Ljava/lang/String; = "slug"

.field protected static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final MENU_ITEM_CHECKLIST:I = 0x7f08053f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChecklistDialogFragment:Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMenu:Landroid/view/Menu;

.field private mSlug:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/activities/WebViewActivity;-><init>()V

    .line 189
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hideChecklistIcon()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08053f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    return-void
.end method

.method public static intentForUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/HospitalityWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method private isHostingStandardPage()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private showChecklist()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mChecklistDialogFragment:Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    if-nez v0, :cond_1f

    .line 128
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->newInstance(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mChecklistDialogFragment:Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    .line 129
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mChecklistDialogFragment:Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 135
    :goto_19
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mSlug:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->trackChecklistViewed(Ljava/lang/String;)V

    .line 136
    return-void

    .line 131
    :cond_1f
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mChecklistDialogFragment:Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    iget-object v1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->updateChecklist(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mChecklistDialogFragment:Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->showChecklistDialog()V

    goto :goto_19
.end method

.method private showChecklistIcon()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_15

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08053f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    :cond_15
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->isHostingStandardPage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->finish()V

    .line 70
    :goto_9
    return-void

    .line 68
    :cond_a
    invoke-super {p0}, Lcom/airbnb/android/activities/WebViewActivity;->onBackPressed()V

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;

    invoke-direct {v1, p0, v3}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;-><init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity;Lcom/airbnb/android/activities/HospitalityWebViewActivity$1;)V

    const-string/jumbo v2, "JSInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/airbnb/android/activities/HospitalityWebViewActivity$HospitalityWebViewActivityWebViewClient;

    invoke-direct {v1, p0, v3}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$HospitalityWebViewActivityWebViewClient;-><init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity;Lcom/airbnb/android/activities/HospitalityWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    iput-object p1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mMenu:Landroid/view/Menu;

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08053f

    if-ne v0, v1, :cond_12

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 142
    invoke-direct {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->showChecklist()V

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/WebViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onReceiveChecklist(Ljava/lang/String;)V
    .registers 7
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "items"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 79
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mTitle:Ljava/lang/String;

    .line 80
    const-string/jumbo v3, "slug"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mSlug:Ljava/lang/String;

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mItems:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_39

    .line 84
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 87
    :cond_39
    invoke-direct {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->showChecklistIcon()V

    .line 88
    return-void
.end method

.method protected onResumeFragments()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/airbnb/android/activities/WebViewActivity;->onResumeFragments()V

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mChecklistDialogFragment:Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mChecklistDialogFragment:Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->dismiss()V

    .line 117
    :cond_c
    return-void
.end method

.method protected resetChecklist()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_8

    .line 102
    invoke-direct {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->hideChecklistIcon()V

    .line 104
    :cond_8
    iput-object v1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mItems:Ljava/util/ArrayList;

    .line 105
    iput-object v1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->mTitle:Ljava/lang/String;

    .line 107
    return-void
.end method
