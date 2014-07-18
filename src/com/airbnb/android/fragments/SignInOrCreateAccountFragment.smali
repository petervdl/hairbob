.class public Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;
.super Landroid/support/v4/app/Fragment;
.source "SignInOrCreateAccountFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field mContainer:Landroid/widget/LinearLayout;

.field private mEmailButton:Landroid/view/View;

.field private mEmailSignUpButton:Landroid/view/View;

.field private mFacebookButton:Landroid/view/View;

.field private mGoogleButton:Landroid/view/View;

.field private mMoreLoginOptions:Landroid/view/View;

.field private mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->showAllLoginOptions(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    return-object v0
.end method

.method private createButton(III)Landroid/view/View;
    .registers 11
    .param p1, "stringRes"    # I
    .param p2, "drawableRes"    # I
    .param p3, "buttonColorRes"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0301d0

    iget-object v5, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, "view":Landroid/view/View;
    if-lez p3, :cond_42

    move v0, p3

    .line 149
    .local v0, "colorToUse":I
    :goto_15
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/airbnb/android/utils/ButtonMaker;->makeButton(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    const v3, 0x7f0804f8

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    if-lez p2, :cond_41

    .line 154
    const v3, 0x7f0a00a4

    invoke-static {p2, v3}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 155
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f0804f7

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_41
    return-object v2

    .line 148
    .end local v0    # "colorToUse":I
    :cond_42
    const v0, 0x7f0a002b

    goto :goto_15
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;-><init>()V

    return-object v0
.end method

.method private showAllLoginOptions(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mFacebookButton:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mGoogleButton:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mMoreLoginOptions:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 46
    instance-of v0, p1, Lcom/airbnb/android/interfaces/SignInTransitions;

    if-nez v0, :cond_2f

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/SignInTransitions;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/SignInTransitions;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    .prologue
    const v8, 0x7f0a0052

    const v7, 0x7f02013e

    const/4 v6, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v4, "SignInOrCreateAccountFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_c4

    .line 60
    :goto_10
    const v3, 0x7f0300eb

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 63
    const v3, 0x7f0e01d4

    const v4, 0x7f0200c7

    const v5, 0x7f0a0053

    invoke-direct {p0, v3, v4, v5}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->createButton(III)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mFacebookButton:Landroid/view/View;

    .line 64
    const v3, 0x7f0e0707

    const v4, 0x7f0200cb

    const v5, 0x7f0a0054

    invoke-direct {p0, v3, v4, v5}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->createButton(III)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mGoogleButton:Landroid/view/View;

    .line 65
    const v3, 0x7f0e0706

    invoke-direct {p0, v3, v7, v8}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->createButton(III)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mEmailButton:Landroid/view/View;

    .line 66
    const v3, 0x7f0e0715

    invoke-direct {p0, v3, v7, v8}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->createButton(III)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mEmailSignUpButton:Landroid/view/View;

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "viewIndex":I
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->isCurrentIPInChina()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 71
    const v3, 0x7f0e0535

    const v4, 0x7f0a002b

    invoke-direct {p0, v3, v6, v4}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->createButton(III)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mMoreLoginOptions:Landroid/view/View;

    .line 72
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mMoreLoginOptions:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$1;-><init>(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mEmailSignUpButton:Landroid/view/View;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "viewIndex":I
    .local v2, "viewIndex":I
    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 80
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mEmailButton:Landroid/view/View;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "viewIndex":I
    .restart local v1    # "viewIndex":I
    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 81
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mMoreLoginOptions:Landroid/view/View;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "viewIndex":I
    .restart local v2    # "viewIndex":I
    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 82
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mFacebookButton:Landroid/view/View;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "viewIndex":I
    .restart local v1    # "viewIndex":I
    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 83
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mGoogleButton:Landroid/view/View;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "viewIndex":I
    .restart local v2    # "viewIndex":I
    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 85
    invoke-direct {p0, v6}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->showAllLoginOptions(Z)V

    move v1, v2

    .line 95
    .end local v2    # "viewIndex":I
    .restart local v1    # "viewIndex":I
    :goto_98
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mFacebookButton:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$2;-><init>(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mGoogleButton:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$3;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$3;-><init>(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mEmailSignUpButton:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$4;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$4;-><init>(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mEmailButton:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$5;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$5;-><init>(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewIndex":I
    :catch_c4
    move-exception v3

    const/4 v3, 0x0

    :try_start_c6
    const-string/jumbo v4, "SignInOrCreateAccountFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_cd} :catch_c4

    goto/16 :goto_10

    .line 89
    .restart local v0    # "view":Landroid/view/View;
    .restart local v1    # "viewIndex":I
    :cond_cf
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mFacebookButton:Landroid/view/View;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "viewIndex":I
    .restart local v2    # "viewIndex":I
    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 90
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mGoogleButton:Landroid/view/View;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "viewIndex":I
    .restart local v1    # "viewIndex":I
    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 91
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mEmailSignUpButton:Landroid/view/View;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "viewIndex":I
    .restart local v2    # "viewIndex":I
    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 92
    iget-object v3, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mEmailButton:Landroid/view/View;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "viewIndex":I
    .restart local v1    # "viewIndex":I
    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_98
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v1, 0x7f0e0705

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/SignInTransitions;->setActionBarTitle(I)V

    .line 56
    return-void
.end method
