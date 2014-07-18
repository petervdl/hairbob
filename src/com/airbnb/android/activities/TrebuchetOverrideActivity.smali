.class public Lcom/airbnb/android/activities/TrebuchetOverrideActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "TrebuchetOverrideActivity.java"


# static fields
.field private static final TREBUCHET_KEY_PREFIX:Ljava/lang/String; = "TREBUCHET_"


# instance fields
.field mList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/TrebuchetOverrideActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/activities/TrebuchetOverrideActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->getKeyWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKeyWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TREBUCHET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKeyWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v0, "TREBUCHET_"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v4, 0x7f030014

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 44
    const v4, 0x7f0e015b

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 46
    invoke-static {p0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    .line 48
    .local v0, "debugSettings":Lcom/airbnb/android/utils/DebugSettings;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings;->getAllTrebuchetFlags()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/utils/Strap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->getKeyWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 54
    .end local v2    # "key":Ljava/lang/String;
    :cond_3e
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    iget-object v4, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->mList:Landroid/widget/ListView;

    new-instance v5, Lcom/airbnb/android/adapters/DebugTrebuchetAdapter;

    const v6, 0x109000a

    invoke-direct {v5, p0, v6, v3}, Lcom/airbnb/android/adapters/DebugTrebuchetAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v4, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->mList:Landroid/widget/ListView;

    new-instance v5, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;

    invoke-direct {v5, p0, v3, v0}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;-><init>(Lcom/airbnb/android/activities/TrebuchetOverrideActivity;Ljava/util/List;Lcom/airbnb/android/utils/DebugSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    return-void
.end method
