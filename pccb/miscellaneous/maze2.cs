namespace ProCon.Class
    {
    using P = KeyValuePair<int, int>;
    class Labyrinth
        {
        private const int INF = 10000000;

        //private Dictionary<int, int> P = new Dictionary<int, int>();

        private string[ , ] maze;
        private int N, M;
        private int sx, sy;
        private int gx, gy;

        private int[ , ] d;

        int[] dx = new int[] { 1, 0, -1, 0 };
        int[] dy = new int[] { 0, 1, 0, -1 };

        public void Solve(int i_N, int i_M,int i_sx, int i_sy,int i_gx, int i_gy, string[,] i_maze)
            {
            //変数初期化
            N = i_N;
            M = i_M;
            sx = i_sx;
            sy = i_sy;
            gx = i_gx;
            gy = i_gy;
            maze = i_maze;
            d = new int[N,M];

            int res = dfs();
            Console.WriteLine( "Minimum Turn = {0}", res );
            }

        private int dfs()
            {
            Queue<KeyValuePair<int, int>> que = new Queue<KeyValuePair<int, int>>();
            //全ての点をINFで初期化
            for ( int i = 0; i < N; i++ )
                {
                for ( int j = 0; j < M; j++ )
                    {
                    d[ i, j ] = INF;
                    }
                }
            //スタート地点をキューに入れてその点の距離を0にする。
            que.Enqueue( new P( sx, sy ) );
            d[ sx, sy ] = 0;
            //キューが空になるまでループ
            while ( 0 != que.Count )
                {
                //キューの先頭を取り出す
                var p = que.Dequeue();
                //取り出してきた状態がゴールなら探索終了
                if ( p.Key == gx && p.Value == gy )
                    {
                    break;
                    }
                //移動4方向をループ
                for ( int i = 0; i < 4; i++ )
                    {
                    //移動した後の点を(nx,ny)とする
                    int nx = p.Key + dx[ i ], ny = p.Value + dy[ i ];
                    //移動が可能かの判定とすでに訪れたことのあるかの判定(d[nx,ny] != INFなら訪れたことがある)
                    if ( 0 <= nx && nx < N && 0 <= ny && ny < M && maze[ nx, ny ] != "#" && d[ nx, ny ] == INF )
                        {
                        //移動できるならキューに入れ、その点の距離からの距離＋１で確定する
                        que.Enqueue( new P( nx, ny ) );
                        d[ nx, ny ] = d[ p.Key, p.Value ] + 1;
                        }
                    }
                }
            return d[ gx, gy ];
            }
        }
    }