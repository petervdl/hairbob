.class public Lcom/airbnb/android/activities/TextDetailActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "TextDetailActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INTENT_EXTRA_TEXT_DETAIL:Ljava/lang/String; = "text_detail"

.field private static final INTENT_EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final INTENT_EXTRA_TITLE_ID:Ljava/lang/String; = "title_id"

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/airbnb/android/activities/TextDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/TextDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method public static intentFor(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/TextDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "title_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    const-string/jumbo v1, "text_detail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    return-object v0
.end method

.method public static intentFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/TextDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "text_detail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

.method private setupViews()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TextDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 45
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/airbnb/android/activities/TextDetailActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    .line 53
    :cond_16
    :goto_16
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/TextDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TextDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "text_detail"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void

    .line 47
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TextDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, "titleId":I
    if-eq v1, v5, :cond_16

    .line 49
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lcom/airbnb/android/activities/TextDetailActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    goto :goto_16
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/TextDetailActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/airbnb/android/activities/TextDetailActivity;->setupViews()V

    .line 40
    return-void
.end method
