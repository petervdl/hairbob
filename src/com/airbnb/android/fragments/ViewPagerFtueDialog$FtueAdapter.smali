.class Lcom/airbnb/android/fragments/ViewPagerFtueDialog$FtueAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ViewPagerFtueDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ViewPagerFtueDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FtueAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/fragments/ViewPagerFtueDialog;Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$FtueAdapter;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    .line 135
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$FtueAdapter;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getNumPages()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$FtueAdapter;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->forStep(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
