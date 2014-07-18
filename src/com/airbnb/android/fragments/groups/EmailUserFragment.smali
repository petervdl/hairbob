.class public Lcom/airbnb/android/fragments/groups/EmailUserFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "EmailUserFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_GROUP:Ljava/lang/String; = "group"

.field private static final ARG_USER:Ljava/lang/String; = "user"


# instance fields
.field private mBody:Landroid/widget/EditText;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mSend:Landroid/widget/Button;

.field private mSubject:Landroid/widget/EditText;

.field private mUser:Lcom/airbnb/android/models/User;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSubject:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mBody:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Lcom/airbnb/android/models/User;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->hasValidContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/groups/EmailUserFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EmailUserFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->updateSendButton(Z)V

    return-void
.end method

.method private hasValidContent()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSubject:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->isTextEntered(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mBody:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->isTextEntered(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isTextEntered(Landroid/widget/EditText;)Z
    .registers 4
    .param p1, "field"    # Landroid/widget/EditText;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static newInstance(Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/EmailUserFragment;
    .registers 5
    .param p0, "user"    # Lcom/airbnb/android/models/User;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 39
    new-instance v1, Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;-><init>()V

    .line 40
    .local v1, "f":Lcom/airbnb/android/fragments/groups/EmailUserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    const-string/jumbo v2, "group"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method

.method private updateSendButton(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSend:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSend:Landroid/widget/Button;

    const v1, 0x7f020210

    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->getSubmitColorResourceId(Z)I

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 148
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030048

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "group"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/groups/Group;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 53
    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/User;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 54
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mUser:Lcom/airbnb/android/models/User;

    if-nez v4, :cond_37

    .line 55
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "EmailUserFragment does not have a valid Host arg"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_37
    const v4, 0x7f0800cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, "userName":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0235

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v8}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v4, 0x7f0800cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSend:Landroid/widget/Button;

    .line 61
    new-instance v1, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)V

    .line 85
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSend:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSubject:Landroid/widget/EditText;

    .line 87
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSubject:Landroid/widget/EditText;

    new-instance v5, Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    const v4, 0x7f0800cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mBody:Landroid/widget/EditText;

    .line 108
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mBody:Landroid/widget/EditText;

    new-instance v5, Lcom/airbnb/android/fragments/groups/EmailUserFragment$3;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->hasValidContent()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->updateSendButton(Z)V

    .line 129
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 132
    const-string/jumbo v4, "impressions"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackUserEmail(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 133
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v4
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
