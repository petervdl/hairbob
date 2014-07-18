.class public abstract Lcom/airbnb/android/activities/LinearBaseActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "LinearBaseActivity.java"


# instance fields
.field private mStep:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$004(Lcom/airbnb/android/activities/LinearBaseActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/LinearBaseActivity;

    .prologue
    .line 14
    iget v0, p0, Lcom/airbnb/android/activities/LinearBaseActivity;->mStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/android/activities/LinearBaseActivity;->mStep:I

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/LinearBaseActivity;Landroid/support/v4/app/Fragment;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/LinearBaseActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/LinearBaseActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private showFragment(Landroid/support/v4/app/Fragment;)V
    .registers 9
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v6, 0x7f08002e

    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    .line 50
    if-nez p1, :cond_e

    .line 51
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LinearBaseActivity;->finish()V

    .line 66
    :goto_d
    return-void

    .line 54
    :cond_e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LinearBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 55
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 56
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LinearBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 57
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_2d

    .line 58
    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 60
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    :cond_2d
    invoke-virtual {v1, v6, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_d
.end method


# virtual methods
.method protected abstract forStep(I)Landroid/support/v4/app/Fragment;
.end method

.method protected abstract getContinueViews()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getLayout()I
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/airbnb/android/activities/LinearBaseActivity;->mStep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/android/activities/LinearBaseActivity;->mStep:I

    .line 20
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onBackPressed()V

    .line 21
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LinearBaseActivity;->getLayout()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/LinearBaseActivity;->setContentView(I)V

    .line 28
    new-instance v0, Lcom/airbnb/android/activities/LinearBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/activities/LinearBaseActivity$1;-><init>(Lcom/airbnb/android/activities/LinearBaseActivity;)V

    .line 35
    .local v0, "continueClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LinearBaseActivity;->getContinueViews()Ljava/util/List;

    move-result-object v3

    .line 36
    .local v3, "viewsThatProgressFlow":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 37
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_17

    .line 40
    .end local v2    # "v":Landroid/view/View;
    :cond_27
    const/4 v4, 0x0

    iput v4, p0, Lcom/airbnb/android/activities/LinearBaseActivity;->mStep:I

    .line 41
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onStart()V

    .line 46
    iget v0, p0, Lcom/airbnb/android/activities/LinearBaseActivity;->mStep:I

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/LinearBaseActivity;->forStep(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/LinearBaseActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 47
    return-void
.end method

.method protected setStep(I)V
    .registers 2
    .param p1, "step"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/airbnb/android/activities/LinearBaseActivity;->mStep:I

    .line 70
    return-void
.end method
