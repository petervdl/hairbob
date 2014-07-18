.class public Lcom/airbnb/android/activities/FontTestActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "FontTestActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/FontTestActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/airbnb/android/activities/FontTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "icons":[Ljava/lang/String;
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/FontTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 21
    .local v0, "gridView":Landroid/widget/GridView;
    new-instance v2, Lcom/airbnb/android/activities/FontTestActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/airbnb/android/activities/FontTestActivity$1;-><init>(Lcom/airbnb/android/activities/FontTestActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    invoke-virtual {p0}, Lcom/airbnb/android/activities/FontTestActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/airbnb/android/activities/FontTestActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "Font Test"

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
