.class public abstract Lcom/airbnb/android/activities/FUXBaseActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "FUXBaseActivity.java"


# instance fields
.field private mStep:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$004(Lcom/airbnb/android/activities/FUXBaseActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/FUXBaseActivity;

    .prologue
    .line 13
    iget v0, p0, Lcom/airbnb/android/activities/FUXBaseActivity;->mStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/android/activities/FUXBaseActivity;->mStep:I

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/FUXBaseActivity;Landroid/support/v4/app/Fragment;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/FUXBaseActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/FUXBaseActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private showFragment(Landroid/support/v4/app/Fragment;)V
    .registers 9
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v6, 0x7f08002e

    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    .line 46
    if-nez p1, :cond_e

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/activities/FUXBaseActivity;->finish()V

    .line 62
    :goto_d
    return-void

    .line 50
    :cond_e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/FUXBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 51
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 52
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/FUXBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 53
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_2d

    .line 54
    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 60
    :cond_2d
    invoke-virtual {v1, v6, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_d
.end method


# virtual methods
.method public abstract forStep(I)Landroid/support/v4/app/Fragment;
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lcom/airbnb/android/activities/FUXBaseActivity;->mStep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/android/activities/FUXBaseActivity;->mStep:I

    .line 19
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onBackPressed()V

    .line 20
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/FUXBaseActivity;->setContentView(I)V

    .line 26
    new-instance v0, Lcom/airbnb/android/activities/FUXBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/activities/FUXBaseActivity$1;-><init>(Lcom/airbnb/android/activities/FUXBaseActivity;)V

    .line 34
    .local v0, "click":Landroid/view/View$OnClickListener;
    const v1, 0x7f080032

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/FUXBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/FUXBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/android/activities/FUXBaseActivity;->mStep:I

    .line 37
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onStart()V

    .line 42
    iget v0, p0, Lcom/airbnb/android/activities/FUXBaseActivity;->mStep:I

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/FUXBaseActivity;->forStep(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/FUXBaseActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 43
    return-void
.end method

.method protected setStep(I)V
    .registers 2
    .param p1, "step"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/airbnb/android/activities/FUXBaseActivity;->mStep:I

    .line 66
    return-void
.end method
