.class public Lcom/airbnb/android/activities/ManageCaptionsActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ManageCaptionsActivity.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;


# static fields
.field private static final INTENT_EXTRA_LISTING:Ljava/lang/String; = "listing"

.field public static final INTENT_EXTRA_NUM_CAPTIONS_UPDATED:Ljava/lang/String; = "num_captions_updated"

.field private static final INTENT_EXTRA_PHOTO_INDEX:Ljava/lang/String; = "photo_index"


# instance fields
.field private mCommitChanges:Z

.field private mCurrentPhotoCaption:I

.field private mCurrentPhotoCaptionTitles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mManageCaptionsFragment:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

.field private mMaxPhotoCaption:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/activities/ManageCaptionsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ManageCaptionsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCommitChanges:Z

    return p1
.end method

.method public static intentForEdit(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ManageCaptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method public static intentForPhoto(Landroid/content/Context;Lcom/airbnb/android/models/Listing;I)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "photoIndex"    # I

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ManageCaptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "photo_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    return-object v0
.end method


# virtual methods
.method public addPhotoCaptionText(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCurrentPhotoCaptionTitles:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    iget v0, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCurrentPhotoCaption:I

    iget v1, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mMaxPhotoCaption:I

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->updateCurrentPhotoCaption(II)V

    .line 105
    return-void
.end method

.method public finish()V
    .registers 5

    .prologue
    .line 160
    iget-boolean v2, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCommitChanges:Z

    if-eqz v2, :cond_29

    .line 161
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mManageCaptionsFragment:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getNumCaptionsUpodated()I

    move-result v0

    .line 163
    .local v0, "captionsUpdated":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v1, "data":Landroid/content/Intent;
    const-string/jumbo v2, "managed_listing"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mManageCaptionsFragment:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v2, "num_captions_updated"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    .end local v0    # "captionsUpdated":I
    .end local v1    # "data":Landroid/content/Intent;
    :goto_25
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->finish()V

    .line 172
    return-void

    .line 168
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->setResult(I)V

    goto :goto_25
.end method

.method protected getWindowFeatures()[I
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    return-object v0
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 132
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mManageCaptionsFragment:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->hasLocalEdits()Z

    move-result v0

    .line 134
    .local v0, "edited":Z
    if-eqz v0, :cond_36

    .line 135
    new-instance v1, Lcom/airbnb/android/activities/ManageCaptionsActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/ManageCaptionsActivity$1;-><init>(Lcom/airbnb/android/activities/ManageCaptionsActivity;)V

    .line 145
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e04bd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e04be

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e050d

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e050c

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 156
    .end local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :goto_35
    return-void

    .line 153
    :cond_36
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCommitChanges:Z

    .line 154
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onBackPressed()V

    goto :goto_35
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCurrentPhotoCaptionTitles:Ljava/util/LinkedList;

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 66
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 67
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 68
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "listing"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    .line 73
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 74
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const v4, 0x7f080025

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    iput-object v4, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mManageCaptionsFragment:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    .line 76
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mManageCaptionsFragment:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    if-nez v4, :cond_52

    .line 77
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "photo_index"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 79
    .local v3, "photoIndex":I
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->newInstance(Lcom/airbnb/android/models/Listing;I)Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mManageCaptionsFragment:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    .line 80
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mManageCaptionsFragment:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    invoke-virtual {p0, v4, v6}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 84
    .end local v3    # "photoIndex":I
    :cond_52
    iput-boolean v6, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCommitChanges:Z

    .line 85
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 96
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 91
    :pswitch_d
    iput-boolean v0, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCommitChanges:Z

    .line 92
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->finish()V

    goto :goto_c

    .line 89
    nop

    :pswitch_data_14
    .packed-switch 0x102002c
        :pswitch_d
    .end packed-switch
.end method

.method public updateCurrentPhotoCaption(II)V
    .registers 11
    .param p1, "current"    # I
    .param p2, "maximum"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCurrentPhotoCaption:I

    .line 110
    iput p2, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mMaxPhotoCaption:I

    .line 112
    const v4, 0x7f0e0526

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCurrentPhotoCaptionTitles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;>;"
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 117
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    if-nez v1, :cond_34

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 120
    :cond_34
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, "text":Landroid/widget/TextView;
    if-nez v2, :cond_40

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 124
    :cond_40
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 128
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_44
    return-void
.end method
