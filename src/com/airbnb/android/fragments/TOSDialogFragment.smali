.class public Lcom/airbnb/android/fragments/TOSDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TOSDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;
    }
.end annotation


# static fields
.field private static final AIRBNB_HOST:Ljava/lang/String;

.field private static final AIRBNB_TOS_URL:Ljava/lang/String; = "https://m.airbnb.com/terms/privacy_policy?hide_nav=true&locale="

.field private static final AIRBNB_TOS_URL_DISAGREE:Ljava/lang/String; = "https://m.airbnb.com/terms/consent_disagree?hide_nav=true&locale="


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChoiceWasHandled:Z

.field private mListener:Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string/jumbo v0, "https://m.airbnb.com/terms/privacy_policy?hide_nav=true&locale="

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/TOSDialogFragment;->AIRBNB_HOST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 32
    return-void
.end method

.method private accept()V
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mChoiceWasHandled:Z

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mListener:Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mListener:Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;

    invoke-interface {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;->onAccept()V

    .line 190
    :cond_c
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/TOSDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TOSDialogFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->updateAcceptButton()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/airbnb/android/fragments/TOSDialogFragment;->AIRBNB_HOST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/TOSDialogFragment;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TOSDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/TOSDialogFragment;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TOSDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/TOSDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TOSDialogFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->accept()V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/TOSDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TOSDialogFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->decline()V

    return-void
.end method

.method private decline()V
    .registers 4

    .prologue
    .line 193
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->logout()V

    .line 194
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://m.airbnb.com/terms/consent_disagree?hide_nav=true&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mChoiceWasHandled:Z

    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mListener:Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;

    if-eqz v0, :cond_34

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mListener:Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;

    invoke-interface {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;->onDecline()V

    .line 199
    :cond_34
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/TOSDialogFragment;
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;-><init>()V

    return-object v0
.end method

.method private updateAcceptButton()V
    .registers 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 181
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 182
    .local v0, "accept":Landroid/widget/Button;
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    invoke-virtual {p0, v6, v5}, Lcom/airbnb/android/fragments/TOSDialogFragment;->setStyle(II)V

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03004f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 60
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 63
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/airbnb/android/fragments/TOSDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/TOSDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    .line 73
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/airbnb/android/fragments/TOSDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/TOSDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 91
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/airbnb/android/fragments/TOSDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/TOSDialogFragment$3;-><init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 103
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://m.airbnb.com/terms/privacy_policy?hide_nav=true&locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 106
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e002f

    new-instance v4, Lcom/airbnb/android/fragments/TOSDialogFragment$6;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/TOSDialogFragment$6;-><init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0162

    new-instance v4, Lcom/airbnb/android/fragments/TOSDialogFragment$5;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/TOSDialogFragment$5;-><init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/TOSDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/TOSDialogFragment$4;-><init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 135
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/airbnb/android/fragments/TOSDialogFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/fragments/TOSDialogFragment$7;-><init>(Lcom/airbnb/android/fragments/TOSDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 150
    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 157
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 158
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 169
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mChoiceWasHandled:Z

    if-nez v0, :cond_a

    .line 171
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->decline()V

    .line 173
    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->updateAcceptButton()V

    .line 164
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public setTOSListener(Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment;->mListener:Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;

    .line 177
    return-void
.end method
